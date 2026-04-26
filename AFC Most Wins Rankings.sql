-- Most wins in  entire AFC Ranked
SELECT
	Team,
    Wins,
   DENSE_RANK() OVER( order by Wins desc)  AS WinsRanking  
From
	afc_2025_2026_standings
Group By
	Team, Wins
ORDER By
	Wins desc;

-- Most wins in AFC North Ranked
SELECT
	Team,
    Division,
    Wins,
    DENSE_RANK() OVER( order by Wins desc)  AS  WinsRankingInDivision 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC North'
ORDER By
	Wins desc;
    
    
-- Most wins in AFC East Ranked

SELECT
	Team,
    Division,
    Wins,
    DENSE_RANK() OVER( order by Wins desc)  AS WinsRankingInDivision 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC East'
ORDER By
	Wins desc;


-- Most wins in AFC South Ranked
SELECT
	Team,
    Division,
    Wins,
    DENSE_RANK() OVER( order by Wins desc)  AS WinsRankingInDivision 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC South'
ORDER By
	Wins desc;
    
-- Most wins in AFC West Ranked
    SELECT
	Team,
    Division,
    Wins,
    DENSE_RANK() OVER( order by Wins desc)  AS WinsRankingInDivision 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC West'
ORDER By
	Wins desc
    
    


	

	
