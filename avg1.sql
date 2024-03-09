--What's the average number of matches per season where a team scored 5 or more goals? How does this differ by country?

SELECT
	c.name AS country,
    -- Calculate the average matches per season
	 avg(outer_s.matches) AS avg_seasonal_high_scores
FROM country AS c
-- Left join outer_s to country
left join (
  SELECT country_id, season,
         COUNT(id) AS matches
  FROM (
    SELECT country_id, season, id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5) AS inner_s
  -- Close parentheses and alias the subquery
  GROUP BY country_id, season) as outer_s
ON c.id = outer_s.country_id
GROUP BY country;
