library(shiny)
library(tidyverse)
library(jsonlite)
library(httr)
library(EloRating)
library(NBAEloRatings)
library(RColorBrewer)
library(espnscrapeR)
library(zoo)

startDate = as.Date("2021-10-19") # NBA Opening Day
endDate = Sys.Date() - 1

dates = seq(startDate,endDate,by = "days")

standingsInfo = GET("https://data.nba.net/10s/prod/v1/current/standings_all.json")
standingsData = fromJSON(rawToChar(standingsInfo$content))$league$standard$teams 

standingsData = standingsData %>%
    mutate(Abbreviation = standingsData$teamSitesOnly$teamTricode,
           City = standingsData$teamSitesOnly$teamName,
           Name = standingsData$teamSitesOnly$teamNickname) %>%
    mutate(Team = paste(City,Name))

gameDateWinner = function(date,char = F){
    
    dateCharacter = gsub("-","",date)
    
    dayInfo = GET(paste0("http://data.nba.net/10s/prod/v1/",dateCharacter,"/scoreboard.json"))
    data = fromJSON(rawToChar(dayInfo$content))$games
    
    if (is.data.frame(data) == T) {
        
        homeTeams = (data$hTeam$triCode)
        awayTeams = (data$vTeam$triCode)
        
        if (char == T){
            homeScore = (data$hTeam$score)
            awayScore = (data$vTeam$score)
        }
        
        if (char == F){
            homeScore = as.numeric(data$hTeam$score)
            awayScore = as.numeric(data$vTeam$score)
        }
        
        homeWin = ifelse(homeScore > awayScore,1,0)
        
        outcomes = data.frame(homeTeams,awayTeams,homeWin) %>%
            mutate(Winner = ifelse(homeWin == 1,homeTeams,awayTeams),
                   Loser = ifelse(homeWin == 0,homeTeams,awayTeams),
                   Date = date) %>%
            filter(is.na(Winner) == F) %>%
            select(Winner,Loser,Date)
        
        return(outcomes)
        
    }
    
}



eloGenerator = function(gameData) {
    inputData = gameData
    Winners = inputData$Winner
    Losers = inputData$Loser
    Dates = inputData$Date
    
    elo_results <- EloRating::elo.seq(winner = Winners, 
                                      loser = Losers, Date = Dates, runcheck = T, 
                                      k = 25)
    elo_results
}

allGames = dates %>%
    map_dfr(.f = ~gameDateWinner(.x)) %>%
    filter((Winner %in% c("LBN","DRT")|Loser %in% c("LBN","DRT")) == F)

eloRatings = eloGenerator(gameData = allGames)

eloOverTime = data.frame(eloRatings$cmat) 
eloOverTime = eloOverTime %>% mutate(SeasonDay = seq(1:nrow(eloOverTime)))

eloByTeam = elo.by.team(eloRatings)

teamPlotMaker = function(team){
    plotData = eloOverTime %>% select(!!team,SeasonDay)
    ggplot(plotData,aes_string(x = "SeasonDay", y = team)) +
        geom_line() +
        geom_hline(yintercept = 1000,linetype = "dashed") +
        theme_classic() +
        labs(x = "Season Date",
             y = paste(team,"Elo Rating"),
             title = paste("Elo Rating Change for",team),
             subtitle = "1000 = Elo rating of average NBA team") +
        theme(plot.title = element_text(face = "bold",size = 24),
              plot.subtitle = element_text(face = "italic",size = 16),
              axis.title.x = element_text(size = 14),
              axis.title.y = element_text(size = 14))
}

teamPlotMaker("PHX")

gtData = inner_join(eloByTeam,standingsData,by = "Abbreviation")

gtTableData = gtData %>% select(Abbreviation,Elo = elo,Team,Wins = win, Losses = loss,
                                WinPct = winPct,lastTenWin,lastTenLoss,streak,isWinStreak) %>%
    mutate(WinLoss = paste(Wins,Losses,sep = "-"),
           RecordLast10 = paste(lastTenWin,lastTenLoss,sep = "-"),
           CurrentStreak = ifelse(isWinStreak == T,paste("Won",streak),paste("Lost",streak))) %>%
    mutate(WinPct = as.numeric(WinPct)) %>%
    select(Elo,WinPct,Team,WinLoss,RecordLast10,CurrentStreak)

gtTableMaker = function(gtTableInput) {
    gtTableInput %>% gt() %>%
    data_color(columns = c(Elo,WinPct),colors = brewer.pal(9,"RdYlGn")) %>%
    tab_header(title = md("**NBA Elo Ratings**"),
               subtitle = md("*Data as of yesterday's games*")) %>%
    cols_align(align = "c",columns = everything()) %>%
    fmt_percent(columns = WinPct,decimals = 1) %>%
    cols_label(Elo = "Team ELO",
               WinPct = "Win %",
               Team = "Team",
               WinLoss = "Record",
               RecordLast10 = "Last 10 Games",
               CurrentStreak = "Streak"
    ) %>%
    espnscrapeR::gt_theme_espn()
}

gtTable = gtTableMaker(gtTableData)

## UI ----
ui <- fluidPage(
    titlePanel("Season-Long NBA Elo Ratings",windowTitle = "NBA Elo Ratings"),
    p("Application created by Ben Wieland"),
    
    tabsetPanel(type = "tabs",
                tabPanel("Standings",gt_output(outputId = "table")),
                tabPanel("Visualizations",
                         sidebarLayout(
                             sidebarPanel(
                                 selectInput("team","Select a team:",
                                             choices = sort(eloByTeam$Abbreviation),
                                             selected = "PHI")
                             ),
                             mainPanel(plotOutput("eloplot"))
                         )))
              
    )

## SERVER ----
server <- function(input, output) {
    
    output$table = render_gt(expr = gtTable)
    
    output$eloplot = renderPlot(teamPlotMaker(input$team))
}

## RUN APP ----  
shinyApp(ui = ui, server = server)

