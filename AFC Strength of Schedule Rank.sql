-- Team that had the hardest schedule( higher the number, the harder their schedule was)
SELECT
	Team,
	Strength_of_schedule,
	DENSE_RANK () OVER( order by strength_of_schedule desc) As ScheduleDifficultyRank
FROM
	afc_2025_2026_standings
GROUP BY
	team, Strength_Of_Schedule
ORDER BY
	Strength_Of_Schedule desc