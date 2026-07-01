
-- There 17 games in the NFL regular season
-- AVG PTS FORWARD PER GAME
SELECT
	Team,
	Points_Forward / 17 as AVG_PF_PG,
    DENSE_RANK() OVER( order by Points_Forward / 17 desc) as  AVG_PF_PG_Rank
FROM
	afc_2025_2026_standings
ORDER BY
Points_Forward / 17 DESC;


-- There 17 games in the NFL regular season
-- AVG PTS AGAINST PER GAME
SELECT
	Team,
	Points_Against / 17 as AVG_PA_PG,
    DENSE_RANK() OVER( order by Points_Against / 17 asc) as AVG_PA_PG_Rank
FROM
	afc_2025_2026_standings
ORDER BY
Points_Against / 17 asc




	

 