CREATE PROC usp_GetHoldersWithBalanceHigherThan (@money DECIMAL(15,2)=0)
AS
SELECT ah.FirstName AS [First Name], ah.LastName AS [Last Name]
FROM AccountHolders AS ah
JOIN Accounts a ON ah.Id = a.AccountHolderId
GROUP BY ah.FirstName,ah.LastName
HAVING SUM(a.Balance) > @money
