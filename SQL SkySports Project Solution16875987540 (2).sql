
create database sky_sports;
use sky_sports;
show tables;

#1.	WRITE a sql query to show all the UNIQUE team names
SELECT distinct(team)
FROM group_stage_team_stats;

#2.	Write a SQL query to show name of team which has rank 1 from group 7
select team 
from group_stage_team_stats 
where `rank`=1 and `group`=7;

#3.	WRITE a sql query to show count of all team
select count(team) 
from group_stage_team_stats;

#4.	Write  a SQL query to show matches_played by each team
select team, matches_played 
from group_stage_team_stats;

#5.	Write a SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team, 100.0*(wins/matches_played) as wins_percent 
from group_stage_team_stats;

#6.	Write a SQL query to show which team has maximum goals_scored and how much
SELECT team, goals_scored 
FROM group_stage_team_stats
WHERE goals_scored = (SELECT MAX(goals_scored) FROM group_stage_team_stats);

#7.	Write a SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team, round(100.0*(draws/matches_played), 2) 
from group_stage_team_stats;

#8.	Write a SQL query to show which team has minimum goals_scored and how much
SELECT team, goals_scored 
FROM group_stage_team_stats 
WHERE goals_scored = (SELECT min(goals_scored) FROM group_stage_team_stats);

#9.	Write a SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team, 100.0*(losses/matches_played) as losses_percent 
from group_stage_team_stats 
order by losses_percent;

#10. Write a SQL query to show the average goal_difference
select avg(goal_difference) 
from group_stage_team_stats;

#11. Write a SQL query to show name of the team where points are 0
select team, points 
from group_stage_team_stats 
where points=0;

#12. Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * 
from group_stage_team_stats 
where expected_goal_scored < exp_goal_conceded;

#13. Write a SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * 
from group_stage_team_stats 
where exp_goal_difference between -0.5 and 0.5;

#14. Write a SQL query to show all data in ascending order by exp_goal_difference_per_90 
select * 
from group_stage_team_stats 
order by exp_goal_difference_per_90 asc;

#15. Write a SQL query to show team which has maximum number of players_used
select team, players_used 
from overall_wc_stats 
where players_used = (SELECT max(players_used) FROM overall_wc_stats);

#16. Write a SQL query to show each team name and avg_age in ascending order by avg_age
select team, avg_age 
from overall_wc_stats 
order by avg_age;

#17. WRITE a sql query to show average possession of teams
select avg(possession) 
from overall_wc_stats;

#18. Write a SQL query to show team which has played atleast 5 games
select team, games 
from overall_wc_stats 
where games>=5;

#19. Write a SQL query to show all data for which minutes is greater than 600
select * 
from overall_wc_stats 
where minutes>600;

#20. Write a SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists 
from overall_wc_stats 
order by goals;

#21. Write a SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att 
from overall_wc_stats 
order by pens_made desc;

#22. Write a SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team, cards_yellow, cards_red 
from overall_wc_stats 
where cards_red=1 
order by cards_yellow;

#23. Write a SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90
select team, goals_per90, assists_per90, goals_assists_per90 
from overall_wc_stats 
order by goals_assists_per90 desc;

#24. Write a SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90
select team, goals_pens_per90, goals_assists_pens_per90 
from overall_wc_stats 
order by goals_assists_pens_per90;

#25. Write a SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct
select  team, shots, shots_on_target, shots_on_target_pct 
from overall_wc_stats 
where shots_on_target_pct<30 
order by shots_on_target_pct;

#26. Write a SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team, shots_per90, shots_on_target_per90 
from overall_wc_stats 
where team='Belgium';

#27. Write a SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance 
from overall_wc_stats 
order by average_shot_distance desc;

#28. Write a SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team, errors, touches  
from overall_wc_stats 
where errors=0 and touches<1500;

#29. Write a SQL query to show team, fouls which has maximum number of fouls
select team, max(fouls) 
from overall_wc_stats;
#or
select team, fouls 
from overall_wc_stats 
where fouls=(select max(fouls) from overall_wc_stats);

#30. Write a SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides 
from overall_wc_stats 
where offsides<10 or offsides>20;

#31. Write a SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct
select team, aerials_won, aerials_lost, aerials_won_pct 
from overall_wc_stats 
order by aerials_won_pct desc;

# group by
#32. WRITE a sql query to show number of teams each group has
select `group`, count(team) 
from group_stage_team_stats 
group by `group`;

#33. Write a SQL query to show team names group 6 has
select team, `group` 
from group_stage_team_stats 
where `group`=6;

#34. Write a SQL query to show Australia belongs to which group
select team, `group` 
from group_stage_team_stats
where team='Australia';

#35. Write a SQL query to show group, average wins by each group
select `group`, avg(wins) 
from group_stage_team_stats 
group by `group`;

#36. Write a SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored  
select gs.`group`, max(gs.expected_goal_scored) as max_exp_goal_scored 
from group_stage_team_stats gs 
group by gs.`group` 
order by max_exp_goal_scored;

#37. Write a SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded
select gs.`group`, min(gs.exp_goal_conceded) as min_exp_goal_conceded 
from group_stage_team_stats gs 
group by gs.`group` 
order by min_exp_goal_conceded desc;

#38. Write a SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90
select gs.`group`, avg(gs.exp_goal_difference_per_90) as avg_exp_goal_diff_per_90 
from group_stage_team_stats gs 
group by gs.`group` 
order by avg_exp_goal_diff_per_90;

#39. WRITE a query to show which team has equal number of goals_scored and goals_against
select team, goals_scored, goals_against 
from group_stage_team_stats 
where goals_scored = goals_against;

#40. WRITE a query to show which team has maximum players_used
select team, players_used 
from overall_wc_stats 
where players_used=(select max(players_used) from overall_wc_stats);

#41. WRITE a query to show team, players_used, avg_age, games, minutes  where minutes less than 500 and greater than 200
select team, players_used, avg_age, games, minutes 
from overall_wc_stats 
where minutes < 500 and minutes > 200;

#42. WRITE a query to show all data of group_stage_team_stats in ascending order BY points
select * 
from group_stage_team_stats 
order by points;

#43. WRITE a query to show ALL UNIQUE team in ascending order by team
select distinct(team) 
from overall_wc_stats 
order by team;

#SQL Joins
#44. WRITE a query to show average avg_age of each group and arrange it in descending order by avg_age.
select gs.`group`, avg(td.avg_age) as avg_group_age
from overall_wc_stats td inner join group_stage_team_stats gs 
on td.team=gs.team
group by gs.`group` 
order by avg_group_age desc;

#45. WRITE a query to show sum of fouls for each group and arrange it in ascending order by fouls.
select gs.`group`, sum(td.fouls) as sum_fouls 
from overall_wc_stats td inner join group_stage_team_stats gs 
on td.team=gs.team
group by gs.`group` 
order by sum_fouls;

#46. WRITE a query to show total number of games for each group and arrange it in descending order by games.
select gs.`group`, sum(td.games) as sum_games 
from overall_wc_stats td inner join group_stage_team_stats gs 
on td.team=gs.team
group by gs.`group` 
order by sum_games desc;

#47. WRITE a query to show total number of players_used for each group and arrange it in ascending order by players_used.
select gs.`group`, sum(td.players_used) as sum_players_used 
from overall_wc_stats td inner join group_stage_team_stats gs
on td.team=gs.team
group by gs.`group` 
order by sum_players_used;

#48. WRITE a query to show total number of offsides for each group and arrange it in ascending order by offsides.
select gs.`group`, sum(td.offsides) as sum_offsides 
from overall_wc_stats td inner join group_stage_team_stats gs 
on td.team=gs.team
group by gs.`group` 
order by sum_offsides;

#49. WRITE a query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select gs.`group`, avg(td.passes_pct) as avg_passes_pct
from overall_wc_stats td inner join group_stage_team_stats gs 
on td.team=gs.team
group by gs.`group` 
order by avg_passes_pct desc;

#50. WRITE a query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select gs.`group`, avg(td.goals_per90) as avg_goals_per90
from overall_wc_stats td inner join group_stage_team_stats gs 
on td.team=gs.team
group by gs.`group` 
order by avg_goals_per90;
