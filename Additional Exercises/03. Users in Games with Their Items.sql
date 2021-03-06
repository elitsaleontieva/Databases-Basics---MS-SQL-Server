SELECT 
u.Username AS [Username],
g.Name AS Game,
COUNT(ugi.UserGameId) AS [Items Count],
SUM(i.Price) AS [Items Price]
FROM Users AS u
JOIN UsersGames ug ON u.Id=ug.UserId
JOIN Games g ON ug.GameId = g.Id
JOIN UserGameItems ugi ON ug.Id=ugi.UserGameId
JOIN Items i ON ugi.ItemId=i.Id
GROUP BY u.Username, g.Name
HAVING COUNT(ugi.UserGameId) >= 10
ORDER BY [Items Count] DESC, [Items Price] DESC, [Username]
