-- Avg Offensive Efficiency Score for AFC conference
SELECT 
	AVG
    (Offensive_Efficiency_Score)
    from 
    afc_2025_2026_standings;
    
    -- Avg Defensive Efficiency Score for AFC conference
SELECT 
	AVG
    (Defensive_Efficiency_Score)
    from 
    afc_2025_2026_standings;
    
   -- Avg Offensive Efficiency Score per AFC divisions
   SELECT 
		Division,
		AVG(Offensive_Efficiency_Score)
   FROM
		afc_2025_2026_standings
	GROUP BY
		Division
	ORDER BY
    AVG(Offensive_Efficiency_Score) desc;
        
	-- Avg Defensive Efficiency Score Efficiency Score per AFC divisions
   SELECT 
		Division,
		AVG(Defensive_Efficiency_Score)
   FROM
		afc_2025_2026_standings
	GROUP BY
		Division
	ORDER BY
		AVG(Defensive_Efficiency_Score) desc
		
		
    
    
    
   
    
    