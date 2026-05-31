---  AFC Defensive Efficiency Case statement
--  Below 0.0 score= below avg team
-- 0.0 score= avg team
-- Above 0.0 score= Above avg team
SELECT
	Team,
	Defensive_Efficiency_Score,
CASE
WHEN 
	 Defensive_Efficiency_Score < 0.0 then "Inefficient Defense"
WHEN 
	Defensive_Efficiency_Score = 0.0 then "Average Defensive Efficiency"
ELSE 
	"Efficient Defense"
END AS 
	"Defensive Efficiency Rating"
FROM
	afc_2025_2026_standings
GROUP BY
	Team, Defensive_Efficiency_Score
ORDER BY
	 Defensive_Efficiency_Score asc;
