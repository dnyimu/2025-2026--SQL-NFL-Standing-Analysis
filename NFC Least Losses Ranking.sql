-- Least Losses in  entire NFC Ranked
SELECT
	Team,
    Losses,
   DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking  
From
	nfc_2025_2026_standings
Group By
	Team, losses
ORDER By
	Losses asc;

-- Top 5 least losses in NFC
    
    SELECT
	Team,
    Losses,
   DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking  
From
	nfc_2025_2026_standings
Group By
	Team, losses
ORDER By
	Losses asc
    limit 5;

--  Least losses in NFC North Ranked
SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRankingInDivision 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC North'
ORDER By
	Losses asc;
    
    
-- Least Losses in NFC East Ranked

SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS  LeastLossesRanking  
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC East'
ORDER By
	Losses asc;


-- Least Losses in NFC South Ranked
SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC South'
ORDER By
	Losses asc;
    
-- Least losses in NFC West Ranked
    SELECT
	Team,
    Division,
    Losses,
    DENSE_RANK() OVER( order by Losses asc)  AS LeastLossesRanking 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC West'
ORDER By
	Losses asc
