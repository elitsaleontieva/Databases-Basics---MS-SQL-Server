SELECT 
g.Name AS Game,
gt.Name AS [Game Type],
u.Username AS [Username],
ug.Level AS [Level],
ug.Cash AS [Cash],
c.Name AS [Character]
 FROM UsersGames AS ug
JOIN Games g ON ug.GameId = g.Id
JOIN GameTypes gt ON g.GameTypeId= gt.Id
JOIN Users u ON ug.UserId=u.Id
JOIN Characters c ON ug.CharacterId=c.Id
ORDER BY ug.Level DESC, u.Username, g.Name
