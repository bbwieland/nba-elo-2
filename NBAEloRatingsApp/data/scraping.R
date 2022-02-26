library(NBAEloRatings)

year = 2022
data = overall.function.wrapper(year)

overall = data$OverallStandings$OverallData
standings = data$DivisionStandings$DivisionData
daily = data$DailyPicks$fullpredictions %>% select(-dateGame,-idGame)

write.csv(overall,"NBAEloRatingsApp/data/overall.csv")
write.csv(standings,"NBAEloRatingsApp/data/standings.csv")
write.csv(daily,"NBAEloRatingsApp/data/daily.csv")
