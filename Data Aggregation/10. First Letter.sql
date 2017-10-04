SELECT DISTINCT LEFT([FirstName],1) AS FirstLetter
FROM [dbo].[WizzardDeposits]
WHERE [DepositGroup] = 'Troll Chest'
GROUP BY FirstName
