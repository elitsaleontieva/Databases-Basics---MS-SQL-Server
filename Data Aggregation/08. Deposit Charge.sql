SELECT DepositGroup, [MagicWandCreator], MIN([DepositCharge]) AS MinDepositCharge
FROM [dbo].[WizzardDeposits]
GROUP BY DepositGroup, MagicWandCreator
