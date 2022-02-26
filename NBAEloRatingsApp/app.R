library(shiny)
library(NBAEloRatings)

gt_tbl_picks <- data$DailyPicks$picktable
gt_tbl_standings <- data$DivisionStandings
gt_tbl_overall <- data$OverallStandings

ui <- fluidPage(
    

    
    
    titlePanel("Up-to-Date NBA Elo Standings"),
    fluidRow(
        column(5,align="center",gt_output("standings")),
        column(5,aligh="center",gt_output("overall"))
        ),
    
    titlePanel("Daily NBA Predictions"),
    
    fluidRow(
        column(5,align="center",gt_output("picks"),offset = 1)
    )
)

server <- function(input,
                   output,
                   session) {
    
    output$standings <-
        render_gt(
            expr = gt_tbl_standings,
            height = px(1300),
            width = px(500),
            align = "left"
        )
    
    output$overall <-
        render_gt(
            expr = gt_tbl_overall,
            height = px(1300),
            width = px(800),
            align = "left"
        )
    
    output$picks <-
        render_gt(
            expr = gt_tbl_picks,
            height = px(400),
            width = px(1200),
            align = "left"
        )
    
    
}

shinyApp(ui, server)

# filename "/Users/ben/Desktop/NBA Elo Ratings/nba-elo-2/NBAEloRatingsApp/app.R"
