--  View to have full a NFL standings table( AFC and NFC tables Combined)
CREATE VIEW  NFL_2025_2026_standings AS
SELECT
	*
FROM
	afc_2025_2026_standings 
UNION ALL
SELECT
	*
FROM
	nfc_2025_2026_standings;

     -- Teams that had more wins than losses in NFL
    SELECT
       Team,
       Wins,
       Losses
	FROM
		NFL_2025_2026_standings
	WHERE 
		Wins > Losses
	ORDER BY
		Wins desc;
-- Teams that had more than 10 wins in the NFL
  SELECT
       Team,
       Wins
	FROM
		nfl_2025_2026_standings
	WHERE 
		Wins > 10
	ORDER BY 
        Wins desc;
        
-- TOTAL WINS PER CONFERENCE

SELECT
	SUM(Wins),
    Conference
FROM
	nfl_2025_2026_standings
GROUP BY
 Conference
 ORDER BY
	SUM(Wins) desc;
    
 -- Total Wins per Division
 SELECT
	SUM(Wins),
    Division
FROM
	nfl_2025_2026_standings
GROUP BY
     Division
ORDER BY
	SUM(Wins) desc;
 
 -- Most Point forwards rank Ranking in Entire NFL
 SELECT 
    Team,
    Points_Forward,
DENSE_RANK () OVER ( order by Points_Forward desc) AS PFRank
From nfl_2025_2026_standings;
    
-- Least Points Against Rank in entire NFL
SELECT 
    Team,
    Points_Against,
DENSE_RANK () OVER ( order by Points_Against asc) AS PARank
From nfl_2025_2026_standings;

-- Strength of Schedule Ranking in the NFL( higher the number, the harder their schedule was)
SELECT
	Team,
	Strength_of_schedule,
	DENSE_RANK () OVER( order by strength_of_schedule desc) As ScheduleDifficultyRank
FROM
	nfl_2025_2026_standings
GROUP BY
	team, Strength_Of_Schedule;
    
    
		
		
        
    

 
    

	 
