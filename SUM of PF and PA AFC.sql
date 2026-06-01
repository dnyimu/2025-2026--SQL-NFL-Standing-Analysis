
-- SUM OF Point forward and Points Against in AFC

SELECT
	Conference,
    SUM(Points_forward),
	SUM(Points_Against)
FROM
	afc_2025_2026_standings
GROUP BY
	Conference;
    

    