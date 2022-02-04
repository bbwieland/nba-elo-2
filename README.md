# nba-elo-2
*An Elo rating model for evaluating NBA teams.*

**Updated Elo Predictions as of February 4, 2022:**

<table class="gt_table">
  <thead class="gt_header">
    <tr>
      <th colspan="5" class="gt_heading gt_title gt_font_normal" style><strong>NBA Elo Rating Model</strong></th>
    </tr>
    <tr>
      <th colspan="5" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style><em>Data scraped using nbastatR</em></th>
    </tr>
  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Abbreviation</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">WinPct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Record</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">elo</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="5" class="gt_group_heading">West - Pacific</td>
    </tr>
    <tr><td class="gt_row gt_left">PHX</td>
<td class="gt_row gt_left">Phoenix Suns</td>
<td class="gt_row gt_right" style="background-color: #1A9641; color: #FFFFFF;">0.804</td>
<td class="gt_row gt_left">41-10</td>
<td class="gt_row gt_right" style="background-color: #1A9641; color: #FFFFFF;">1189</td></tr>
    <tr><td class="gt_row gt_left">GSW</td>
<td class="gt_row gt_left">Golden State Warriors</td>
<td class="gt_row gt_right" style="background-color: #55AD4E; color: #000000;">0.755</td>
<td class="gt_row gt_left">40-13</td>
<td class="gt_row gt_right" style="background-color: #66B554; color: #000000;">1150</td></tr>
    <tr><td class="gt_row gt_left">LAC</td>
<td class="gt_row gt_left">LA Clippers</td>
<td class="gt_row gt_right" style="background-color: #FFF7B5; color: #000000;">0.500</td>
<td class="gt_row gt_left">27-27</td>
<td class="gt_row gt_right" style="background-color: #FFDE99; color: #000000;">989</td></tr>
    <tr><td class="gt_row gt_left">LAL</td>
<td class="gt_row gt_left">Los Angeles Lakers</td>
<td class="gt_row gt_right" style="background-color: #FFE7A3; color: #000000;">0.472</td>
<td class="gt_row gt_left">25-28</td>
<td class="gt_row gt_right" style="background-color: #FFBF75; color: #000000;">957</td></tr>
    <tr><td class="gt_row gt_left">SAC</td>
<td class="gt_row gt_left">Sacramento Kings</td>
<td class="gt_row gt_right" style="background-color: #F99F57; color: #000000;">0.352</td>
<td class="gt_row gt_left">19-35</td>
<td class="gt_row gt_right" style="background-color: #E34F2D; color: #FFFFFF;">878</td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="5" class="gt_group_heading">West - Southwest</td>
    </tr>
    <tr><td class="gt_row gt_left">MEM</td>
<td class="gt_row gt_left">Memphis Grizzlies</td>
<td class="gt_row gt_right" style="background-color: #A0D568; color: #000000;">0.667</td>
<td class="gt_row gt_left">36-18</td>
<td class="gt_row gt_right" style="background-color: #86C75F; color: #000000;">1128</td></tr>
    <tr><td class="gt_row gt_left">DAL</td>
<td class="gt_row gt_left">Dallas Mavericks</td>
<td class="gt_row gt_right" style="background-color: #E5F4A6; color: #000000;">0.558</td>
<td class="gt_row gt_left">29-23</td>
<td class="gt_row gt_right" style="background-color: #E7F5A8; color: #000000;">1045</td></tr>
    <tr><td class="gt_row gt_left">SAS</td>
<td class="gt_row gt_left">San Antonio Spurs</td>
<td class="gt_row gt_right" style="background-color: #FBA45B; color: #000000;">0.358</td>
<td class="gt_row gt_left">19-34</td>
<td class="gt_row gt_right" style="background-color: #FFD38B; color: #000000;">977</td></tr>
    <tr><td class="gt_row gt_left">NOP</td>
<td class="gt_row gt_left">New Orleans Pelicans</td>
<td class="gt_row gt_right" style="background-color: #FDAF63; color: #000000;">0.373</td>
<td class="gt_row gt_left">19-32</td>
<td class="gt_row gt_right" style="background-color: #FFC278; color: #000000;">960</td></tr>
    <tr><td class="gt_row gt_left">HOU</td>
<td class="gt_row gt_left">Houston Rockets</td>
<td class="gt_row gt_right" style="background-color: #EC6D3B; color: #000000;">0.294</td>
<td class="gt_row gt_left">15-36</td>
<td class="gt_row gt_right" style="background-color: #E96336; color: #000000;">889</td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="5" class="gt_group_heading">East - Atlantic</td>
    </tr>
    <tr><td class="gt_row gt_left">PHI</td>
<td class="gt_row gt_left">Philadelphia 76ers</td>
<td class="gt_row gt_right" style="background-color: #C6E788; color: #000000;">0.608</td>
<td class="gt_row gt_left">31-20</td>
<td class="gt_row gt_right" style="background-color: #C4E686; color: #000000;">1078</td></tr>
    <tr><td class="gt_row gt_left">BOS</td>
<td class="gt_row gt_left">Boston Celtics</td>
<td class="gt_row gt_right" style="background-color: #F7FCB7; color: #000000;">0.528</td>
<td class="gt_row gt_left">28-25</td>
<td class="gt_row gt_right" style="background-color: #E9F6AA; color: #000000;">1043</td></tr>
    <tr><td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_left">Toronto Raptors</td>
<td class="gt_row gt_right" style="background-color: #F0F9B0; color: #000000;">0.540</td>
<td class="gt_row gt_left">27-23</td>
<td class="gt_row gt_right" style="background-color: #FFE9A5; color: #000000;">1000</td></tr>
    <tr><td class="gt_row gt_left">BKN</td>
<td class="gt_row gt_left">Brooklyn Nets</td>
<td class="gt_row gt_right" style="background-color: #DEF19F; color: #000000;">0.569</td>
<td class="gt_row gt_left">29-22</td>
<td class="gt_row gt_right" style="background-color: #FFE49F; color: #000000;">995</td></tr>
    <tr><td class="gt_row gt_left">NYK</td>
<td class="gt_row gt_left">New York Knicks</td>
<td class="gt_row gt_right" style="background-color: #FFE19C; color: #000000;">0.462</td>
<td class="gt_row gt_left">24-28</td>
<td class="gt_row gt_right" style="background-color: #FFBE74; color: #000000;">956</td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="5" class="gt_group_heading">East - Southeast</td>
    </tr>
    <tr><td class="gt_row gt_left">MIA</td>
<td class="gt_row gt_left">Miami Heat</td>
<td class="gt_row gt_right" style="background-color: #BDE380; color: #000000;">0.623</td>
<td class="gt_row gt_left">33-20</td>
<td class="gt_row gt_right" style="background-color: #CCE98E; color: #000000;">1071</td></tr>
    <tr><td class="gt_row gt_left">ATL</td>
<td class="gt_row gt_left">Atlanta Hawks</td>
<td class="gt_row gt_right" style="background-color: #FFF1AE; color: #000000;">0.490</td>
<td class="gt_row gt_left">25-26</td>
<td class="gt_row gt_right" style="background-color: #FEFFBE; color: #000000;">1023</td></tr>
    <tr><td class="gt_row gt_left">CHA</td>
<td class="gt_row gt_left">Charlotte Hornets</td>
<td class="gt_row gt_right" style="background-color: #F1F9B1; color: #000000;">0.538</td>
<td class="gt_row gt_left">28-24</td>
<td class="gt_row gt_right" style="background-color: #FFFBBA; color: #000000;">1018</td></tr>
    <tr><td class="gt_row gt_left">WAS</td>
<td class="gt_row gt_left">Washington Wizards</td>
<td class="gt_row gt_right" style="background-color: #FFE6A2; color: #000000;">0.471</td>
<td class="gt_row gt_left">24-27</td>
<td class="gt_row gt_right" style="background-color: #FEB86C; color: #000000;">949</td></tr>
    <tr><td class="gt_row gt_left" style="border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #00000000;">ORL</td>
<td class="gt_row gt_left" style="border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #00000000;">Orlando Magic</td>
<td class="gt_row gt_right" style="background-color: #D7191C; color: #FFFFFF; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #00000000;">0.226</td>
<td class="gt_row gt_left" style="border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #00000000;">12-41</td>
<td class="gt_row gt_right" style="background-color: #D7191C; color: #FFFFFF; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: #00000000;">856</td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="5" class="gt_group_heading">East - Central</td>
    </tr>
    <tr><td class="gt_row gt_left">CLE</td>
<td class="gt_row gt_left">Cleveland Cavaliers</td>
<td class="gt_row gt_right" style="background-color: #CEEA8F; color: #000000;">0.596</td>
<td class="gt_row gt_left">31-21</td>
<td class="gt_row gt_right" style="background-color: #D3EC95; color: #000000;">1064</td></tr>
    <tr><td class="gt_row gt_left">MIL</td>
<td class="gt_row gt_left">Milwaukee Bucks</td>
<td class="gt_row gt_right" style="background-color: #C9E88B; color: #000000;">0.604</td>
<td class="gt_row gt_left">32-21</td>
<td class="gt_row gt_right" style="background-color: #DDF09E; color: #000000;">1055</td></tr>
    <tr><td class="gt_row gt_left">CHI</td>
<td class="gt_row gt_left">Chicago Bulls</td>
<td class="gt_row gt_right" style="background-color: #BAE27D; color: #000000;">0.627</td>
<td class="gt_row gt_left">32-19</td>
<td class="gt_row gt_right" style="background-color: #E6F4A7; color: #000000;">1046</td></tr>
    <tr><td class="gt_row gt_left">IND</td>
<td class="gt_row gt_left">Indiana Pacers</td>
<td class="gt_row gt_right" style="background-color: #FBA45B; color: #000000;">0.358</td>
<td class="gt_row gt_left">19-34</td>
<td class="gt_row gt_right" style="background-color: #F38548; color: #000000;">911</td></tr>
    <tr><td class="gt_row gt_left">DET</td>
<td class="gt_row gt_left">Detroit Pistons</td>
<td class="gt_row gt_right" style="background-color: #DA2B20; color: #FFFFFF;">0.235</td>
<td class="gt_row gt_left">12-39</td>
<td class="gt_row gt_right" style="background-color: #D8211D; color: #FFFFFF;">858</td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="5" class="gt_group_heading">West - Northwest</td>
    </tr>
    <tr><td class="gt_row gt_left">MIN</td>
<td class="gt_row gt_left">Minnesota Timberwolves</td>
<td class="gt_row gt_right" style="background-color: #FDFEBD; color: #000000;">0.519</td>
<td class="gt_row gt_left">27-25</td>
<td class="gt_row gt_right" style="background-color: #E5F4A6; color: #000000;">1047</td></tr>
    <tr><td class="gt_row gt_left">DEN</td>
<td class="gt_row gt_left">Denver Nuggets</td>
<td class="gt_row gt_right" style="background-color: #EAF6AB; color: #000000;">0.549</td>
<td class="gt_row gt_left">28-23</td>
<td class="gt_row gt_right" style="background-color: #F3FAB3; color: #000000;">1034</td></tr>
    <tr><td class="gt_row gt_left">UTA</td>
<td class="gt_row gt_left">Utah Jazz</td>
<td class="gt_row gt_right" style="background-color: #CEEA8F; color: #000000;">0.596</td>
<td class="gt_row gt_left">31-21</td>
<td class="gt_row gt_right" style="background-color: #FFF7B5; color: #000000;">1014</td></tr>
    <tr><td class="gt_row gt_left">POR</td>
<td class="gt_row gt_left">Portland Trail Blazers</td>
<td class="gt_row gt_right" style="background-color: #FFC176; color: #000000;">0.404</td>
<td class="gt_row gt_left">21-31</td>
<td class="gt_row gt_right" style="background-color: #FAA159; color: #000000;">930</td></tr>
    <tr><td class="gt_row gt_left">OKC</td>
<td class="gt_row gt_left">Oklahoma City Thunder</td>
<td class="gt_row gt_right" style="background-color: #F28447; color: #000000;">0.320</td>
<td class="gt_row gt_left">16-34</td>
<td class="gt_row gt_right" style="background-color: #E85F34; color: #000000;">887</td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Date generated: 2022-02-04</td>
    </tr>
  </tfoot>
  
</table>


**Outputs:**

Every time the code in daily-updates is executed: 
- a HTML table with predictions for that day
- a HTML table with overall NBA Elo standings
- a HTML table with conference-specific NBA Elo standings
- a HTML table with division-specific NBA Elo standings

*note: until I figure out how to turn functions.Rmd into a working R package, you must run ALL the code chunks in functions.Rmd before executing ANY of the code in daily-updates.rmd*

Functions included: 

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
