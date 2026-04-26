-- Least Losses in  entire AFC Ranked
SELECT
	Team,
    Losses,
   DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking  
From
	afc_2025_2026_standings
Group By
	Team, losses
ORDER By
	Losses asc;

--  Least losses in AFC North Ranked
SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRankingInDivision 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC North'
ORDER By
	Losses asc;
    
    
-- Least Losses in AFC East Ranked

SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS  LeastLossesRanking  
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC East'
ORDER By
	Losses asc;


-- Least Losses in AFC South Ranked
SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC South'
ORDER By
	Losses asc;
    
-- Least losses in AFC West Ranked
    SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking 
From
	afc_2025_2026_standings
WHERE
	Division = 'AFC West'
ORDER By
	Losses asc
    