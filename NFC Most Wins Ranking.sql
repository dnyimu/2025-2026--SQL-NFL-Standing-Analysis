-- Most wins in  entire NFC Ranked
SELECT
	Team,
    Wins,
  DENSE_RANK() OVER( order by Wins desc)  AS WinsRanking  
From
	nfc_2025_2026_standings
Group By
	Team, Wins
ORDER By
	Wins desc;

-- Top 5 most wins in NFC
    SELECT
	Team,
    Wins,
  DENSE_RANK() OVER( order by Wins desc)  AS WinsRanking  
From
	nfc_2025_2026_standings
Group By
	Team, Wins
ORDER By
	Wins desc
    limit 5

-- Most wins in NFC North Ranked
SELECT
	Team,
    Division,
    Wins,
    DENSE_RANK() OVER( order by Wins desc)  AS  WinsRankingInDivision 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC North'
ORDER By
	Wins desc;
    
    
-- Most wins in NFC East Ranked

SELECT
	Team,
    Division,
    Wins,
   DENSE_RANK() OVER( order by Wins desc)  AS WinsRankingInDivision 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC East'
ORDER By
	Wins desc;


-- Most wins in NFC South Ranked
SELECT
	Team,
    Division,
    Wins,
   DENSE_RANK() OVER( order by Wins desc)  AS WinsRankingInDivision 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC South'
ORDER By
	Wins desc;
    
-- Most wins in NFC West Ranked
    SELECT
	Team,
    Division,
    Wins,
   DENSE_RANK() OVER( order by Wins desc)  AS WinsRankingInDivision 
From
	nfc_2025_2026_standings
WHERE
	Division = 'NFC West'
ORDER By
	Wins desc
    
