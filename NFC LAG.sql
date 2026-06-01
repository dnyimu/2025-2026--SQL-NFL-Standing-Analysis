--  Comparing the Points Forward Difference in each division

SELECT 
	Team,
    Division,
    Points_forward,
 Points_Forward - LAG(Points_forward) OVER ( PARTITION BY Division ORDER BY Points_Forward asc ) as PointsForwardIncrease,
 MAX(Points_Forward) OVER (PARTITION BY Division) -  MIN(Points_Forward) OVER (PARTITION BY Division) AS DivisionPointsForwardSpread
FROM
	nfc_2025_2026_standings;
    
    
  -- Comparing the Points Against Difference in each division
    
SELECT 
	Team,
    Division,
    Points_Against,
 Points_Against - LAG(Points_Against) OVER ( PARTITION BY Division ORDER BY Points_Against asc ) as PointsAgainstIncrease,
 MAX(Points_Against) OVER (PARTITION BY Division) -  MIN(Points_Against) OVER (PARTITION BY Division) AS DivisionPointsAgainstSpread
FROM
	nfc_2025_2026_standings;
    
    -- Comparing Win-Loss Percentage by division
SELECT 
	Team,
    Division,
    Win_Loss_Percentage,
	Win_Loss_Percentage - LAG(Win_Loss_Percentage) OVER ( PARTITION BY Division ORDER BY Win_Loss_Percentage asc ) as WinlossPercentageIncrease,
      MAX(Win_Loss_Percentage) OVER (PARTITION BY Division) -  MIN(Win_Loss_Percentage) OVER (PARTITION BY Division) AS DivisionWinLossPercentageSpread
FROM
	nfc_2025_2026_standings
    