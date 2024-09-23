# Sky-Sports-Channel-s-FIFA-World-Cup-Coverage-SQL-
Overview
Analysis for Sky Sports' "Football Digest: Post Match Analysis".
Focus on two tables: group_stage_team_stats and overall_wc_stats.
Utilizes MySQL for data extraction and insights.

Tables Description
1. group_stage_team_stats
team_name: Name of the team.
game_date: Date of the match.
goals_scored: Goals scored by the team.
goals_conceded: Goals conceded by the team.
shots_on_target: Total shots on target.
shots_off_target: Total shots off target.
possession: Percentage of ball possession.
other_metrics: Additional relevant metrics (e.g., fouls, corners).

overall_wc_stats
player_name: Name of the player.
position: Position played by the player.
appearances: Matches played by the player.
goals_scored: Total goals scored.
assists: Number of assists.
yellow_cards: Yellow cards received.
red_cards: Red cards received.
other_metrics: Additional player-related metrics

Data Updates
Tables updated after each match during the FIFA World Cup.
Provides real-time analysis of performances and tactical decisions.

Installation:--
1) Clone the repository:
   git clone https://github.com/yourusername/fifa-world-cup-analysis.git
2)Set up MySQL database and import CSV files
   LOAD DATA INFILE 'path_to/group_stage_team_stats.csv'
INTO TABLE group_stage_team_stats
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'path_to/overall_wc_stats.csv'
INTO TABLE overall_wc_stats
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


Sure! Here’s the README structure broken down into clear bullet points:

FIFA World Cup Data Analysis
Overview
Analysis for Sky Sports' "Football Digest: Post Match Analysis".
Focus on two tables: group_stage_team_stats and overall_wc_stats.
Utilizes MySQL for data extraction and insights.
Tables Description
1. group_stage_team_stats
team_name: Name of the team.
game_date: Date of the match.
goals_scored: Goals scored by the team.
goals_conceded: Goals conceded by the team.
shots_on_target: Total shots on target.
shots_off_target: Total shots off target.
possession: Percentage of ball possession.
other_metrics: Additional relevant metrics (e.g., fouls, corners).
2. overall_wc_stats
player_name: Name of the player.
position: Position played by the player.
appearances: Matches played by the player.
goals_scored: Total goals scored.
assists: Number of assists.
yellow_cards: Yellow cards received.
red_cards: Red cards received.
other_metrics: Additional player-related metrics.
Data Updates
Tables updated after each match during the FIFA World Cup.
Provides real-time analysis of performances and tactical decisions.
Installation
Clone the repository:
bash
Copy code
git clone https://github.com/yourusername/fifa-world-cup-analysis.git
Set up MySQL database and import CSV files:
sql
Copy code
LOAD DATA INFILE 'path_to/group_stage_team_stats.csv'
INTO TABLE group_stage_team_stats
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'path_to/overall_wc_stats.csv'
INTO TABLE overall_wc_stats
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


3) Usage
    SELECT player_name, SUM(goals_scored) AS total_goals
FROM overall_wc_stats
GROUP BY player_name
ORDER BY total_goals DESC;

   Contributing:-
     Contributions are welcome! Submit pull requests or open issues for suggestions.
   







