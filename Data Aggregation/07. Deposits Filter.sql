SELECT DepositGroup, SUM([DepositAmount]) AS TotalSum
FROM [dbo].[WizzardDeposits] AS w
WHERE [MagicWandCreator] ='Ollivander family'
GROUP BY w.DepositGroup
HAVING SUM(w.[DepositAmount])<150000
ORDER BY SUM(w.[DepositAmount]) DESC
