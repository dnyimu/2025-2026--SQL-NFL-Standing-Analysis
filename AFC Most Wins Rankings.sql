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

-- Top 5 most wins in AFC
SELECT
	Team,
    Wins,
   DENSE_RANK() OVER( order by Wins desc)  AS WinsRanking  
From
	afc_2025_2026_standings
Group By
	Team, Wins
ORDER By
	Wins desc
    limit 5;


   -- Top  5  Least losses in AFC
    SELECT
	Team,
    Losses,
   DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking  
From
	afc_2025_2026_standings
Group By
	Team, losses
ORDER By
	Losses asc
    limit 5;

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
    
    


	

	
