-- Wins  Ranking vs Offensive efficiency score Ranking
-- Higher the Offensive Efficiency score, the better
SELECT
    Team,
    Wins,
    DENSE_RANK() OVER( order by Wins desc)  AS WinsRanking, 
    Offensive_Efficiency_Score,
    DENSE_RANK() OVER( order by Offensive_Efficiency_Score desc)  AS OffensiveEffiencyRank
FROM
	afc_2025_2026_standings
Group By
	 Team,Wins, Offensive_Efficiency_Score
     
Order by
Wins desc;
     
-- Losses vs Defensive_Efficiency_Score
 -- Higher the  Defensive Efficiency score, the better
SELECT
    Team,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking, 
    Defensive_Efficiency_Score,
    DENSE_RANK() OVER( order by Defensive_Efficiency_Score desc)  AS DefensiveEfficiencyRank
FROM
	afc_2025_2026_standings
Group By
	 Team, Losses, Defensive_Efficiency_Score
     
Order by
Losses asc;

-- Wins vs Strength of Schedule
-- Higher the Strength of Schedule score is, the better their opponents in the season was

SELECT
    Team,
    Wins,
    DENSE_RANK() OVER( order by Wins desc )  AS WinsRanking, 
    Strength_Of_Schedule,
    DENSE_RANK() OVER( order by Strength_Of_Schedule desc)  AS StrengthOfScheduleRank
FROM
	afc_2025_2026_standings
GROUP BY
	 Team, Wins, Strength_Of_Schedule
ORDER BY
	Wins desc;
    
    -- Losses vs Strength of Schedule
-- Higher the Strength of Schedule score is, the better their opponents in the season was

SELECT
    Team,
    Losses,
    DENSE_RANK() OVER( order by Losses asc )  AS LeastLossesRanking, 
    Strength_Of_Schedule,
    DENSE_RANK() OVER( order by Strength_Of_Schedule desc)  AS StrengthOfScheduleRank
FROM
	afc_2025_2026_standings
GROUP BY
	 Team, Losses, Strength_Of_Schedule
ORDER BY
	losses desc;


