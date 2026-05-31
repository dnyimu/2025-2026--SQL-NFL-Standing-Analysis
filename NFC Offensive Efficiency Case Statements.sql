---  NFC Offensive Efficiency offense Case statement
--  Below 0.0 score= below avg team
-- 0.0 score= avg team
-- Above 0.0 score= Above avg team

SELECT
	team,
    Offensive_Efficiency_Score,
CASE
WHEN 
	 Offensive_Efficiency_Score < 0.0 then "Inefficient Offense"
WHEN 
	Offensive_Efficiency_Score = 0.0 then "Average Offensive Efficiency"
ELSE 
	"Efficient Offense"
END AS 
	"Offensive Efficiency Rating"
FROM
	nfc_2025_2026_standings
GROUP BY
	Team, Offensive_Efficiency_Score
ORDER BY
	 Offensive_Efficiency_Score asc;
