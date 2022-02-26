library(shiny)


overall = read.csv("NBAEloRatingsApp/data/overall.csv")
standings = read.csv("NBAEloRatingsApp/data/standings.csv")
picks = read.csv("NBAEloRatingsApp/data/daily.csv")

ui <- fluidPage(

    titlePanel("Up-to-Date NBA Elo Standings"),
    fluidRow(
        column(5,align="center",renderTable("standings")),
        column(5,aligh="center",renderTable("overall"))
        ),
    
    titlePanel("Daily NBA Predictions"),
    
    fluidRow(
        column(5,align="center",renderTable("picks"),offset = 1)
    )
)

server <- function(input,
                   output,
                   session) {
    
    output$standings <- tableOutput(standings)
    
    output$overall <- tableOutput(overall)
    
    output$picks <- tableOutput(picks)
    
    
}

shinyApp(ui, server)

# filename "/Users/ben/Desktop/NBA Elo Ratings/nba-elo-2/NBAEloRatingsApp/app.R"
