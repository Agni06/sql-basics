select date, (homeGoal+awayGoal) as Goal , Rank() over (order by homeGoal+awayGoa) as rank from match 
where season = '2011/2012';
