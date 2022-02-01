# nba-elo-2
*An Elo rating model for evaluating NBA teams.*

Functions included so far: 

**Scraping and Data Generation**
- elo.model.builder: creates an Elo model for a given NBA season
- elo.by.team: uses an Elo model to generate current Elo ratings for either current or past seasons
- team.info.table: returns information about teams for a given NBA season
- overall.table: merges an Elo ratings table with the team information table

**Visualization**
- elo.table.generator: generates a gt object that is a FiveThirtyEight-style table displaying team Elos in descending order
- elo.conference.generator: similar to elo.table.generator, but grouped by conference
- elo.standings.generator: similar to elo.table.generator, but grouped by conference and division

**Prediction**
- elo.prediction: a generic function for prediction using Elo ratings
- current.day.prediction: takes an Elo model and a date as arguments, and returns a table of that day's games along with predictions for game outcomes using the Elo model supplied to the function. date argument defaults to the current date, but can be changed. 
