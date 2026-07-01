
-- There 17 games in the NFL regular season
-- AVG PTS FORWARD PER GAME RANKED
SELECT
	Team,
	Points_Forward / 17 as AVG_PF_PG,
    DENSE_RANK() OVER( order by Points_Forward / 17 desc) as AVG_PF_Rank
FROM
	nfc_2025_2026_standings
ORDER BY
Points_Forward / 17 DESC;


-- There 17 games in the NFL regular season
-- AVG PTS AGAINST PER GAME RANKED
SELECT
	Team,
    Points_Against / 17 as AVG_PA_PG,
	DENSE_RANK() OVER ( order by Points_Against / 17) as AVG_PA_PG_Rank
FROM
	nfc_2025_2026_standings
ORDER BY
Points_Against / 17 asc
