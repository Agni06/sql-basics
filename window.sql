SELECT 
	date,
	home_goal,
	away_goal,
    -- Create a running total and running average of home goals
    
  sum(home_goal) over(order by date rows between unbounded preceding AND current row) AS running_total, avg(home_goal) over(order by date rows between unbounded preceding AND current row) AS avg_running
FROM match
WHERE 
	hometeam_id = 9908 
	AND season = '2011/2012';
