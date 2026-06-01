 -- SUM OF Point forward and Points Against in NFC

SELECT
	Conference,
    SUM(Points_forward),
	SUM(Points_Against)
FROM
	nfc_2025_2026_standings
GROUP BY
	Conference