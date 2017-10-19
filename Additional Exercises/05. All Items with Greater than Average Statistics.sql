SELECT 
	i.Name,
	i.Price,
	i.MinLevel,
	s.Strength,
	s.Defence,
	s.Speed,
	s.Luck,
	s.Mind
FROM Items i
JOIN [dbo].[Statistics] s ON i.StatisticId=s.Id
WHERE s.Mind > (SELECT AVG(s.Mind) FROM [Statistics] AS s)
AND s.Luck > (SELECT AVG(s.Luck) FROM [Statistics] AS s)
AND s.Speed > (SELECT AVG(s.Speed) FROM [Statistics] AS s)
ORDER BY [Name]
