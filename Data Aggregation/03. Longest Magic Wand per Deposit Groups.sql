SELECT DepositGroup, MAX([MagicWandSize]) AS LongestMagicWand
FROM [dbo].[WizzardDeposits] 
GROUP BY DepositGroup
