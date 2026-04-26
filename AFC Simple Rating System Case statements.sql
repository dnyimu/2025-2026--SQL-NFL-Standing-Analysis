--  AFC Simple Rating System Case statement
--  Below 0.0 score= below avg team
-- 0.0 score= avg team
-- Above 0.0 score= Above avg team

SELECT
	team,
    Simple_Rating_System,
CASE
WHEN 
	Simple_Rating_System < 0.0 then "Below Average Team"
WHEN 
	Simple_Rating_System = 0.0 then "Average Team"
ELSE 
	"Above Average Team"
END AS 
	"Team Rating"
FROM
	afc_2025_2026_standings
GROUP BY
	Team,Simple_Rating_System
ORDER BY
	Simple_Rating_System asc; 
	