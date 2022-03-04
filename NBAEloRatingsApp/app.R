library(shiny)
library(NBAEloRatings)
    
data = NBAEloRatings::overall.function.wrapper(2022)


ui <- fluidPage(
    fluidRow(
        column(6,gt_output("overall")),
        column(6,gt_output("picks"))
    )
    
    
)

server <- function(input,
                   output,
                   session) {
    output$overall = render_gt(data$OverallStandings$OverallGT)
    output$standings = render_gt(data$DivisionStandings$DivisionGT)
    output$picks = render_gt(data$DailyPicks$picktable)
    
}

shinyApp(ui, server)

# filename "/Users/ben/Desktop/NBA Elo Ratings/nba-elo-2/NBAEloRatingsApp/app.R"
