x = nbastatR::assign_nba_teams()

nba = df_dict_nba_teams %>% filter(isNonNBATeam == F) %>%
  mutate(Conference = ifelse(idConference == 1,"East","West")) %>%
  select(Team = nameTeam,Abbreviation = slugTeam, Conference)

teams = write.csv(nba,"~/Desktop/NBA Elo Ratings/nba-elo-2/csvs/teams.csv",
                  row.names = F)
