
-- SUM OF WINS and losses in AFC Divisions

SELECT
	Division,
    SUM(WINS),
    SUM(Losses)
FROM
	afc_2025_2026_standings
GROUP BY
	Division
ORDER BY 
SUM(WINS) ASC;

    
    -- SUM OF WINS in AFC Divisions


SELECT
	Division,
    SUM(WINS),
    SUM(Losses)
FROM
	nfc_2025_2026_standings
GROUP BY
	Division
ORDER BY 
SUM(WINS) ASC;

    