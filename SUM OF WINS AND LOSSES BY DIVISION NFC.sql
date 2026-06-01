
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