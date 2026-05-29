-- Avg Offensive Efficiency Score for NFC conference
SELECT 
	AVG
    (Offensive_Efficiency_Score)
    from 
    nfc_2025_2026_standings;
    
    -- Avg Defensive Efficiency Score for NFC conference
SELECT 
	AVG
    (Defensive_Efficiency_Score)
    from 
    nfc_2025_2026_standings;
    
   -- Avg Offensive Efficiency Score per NFC divisions
   SELECT 
		Division,
		AVG(Offensive_Efficiency_Score)
   FROM
		nfc_2025_2026_standings
	GROUP BY
		Division
	ORDER BY
    AVG(Offensive_Efficiency_Score) desc;
        
	-- Avg Defensive Efficiency Score Efficiency Score per NFC divisions
   SELECT 
		Division,
		AVG(Defensive_Efficiency_Score)
   FROM
		nfc_2025_2026_standings
	GROUP BY
		Division
	ORDER BY
		AVG(Defensive_Efficiency_Score) desc