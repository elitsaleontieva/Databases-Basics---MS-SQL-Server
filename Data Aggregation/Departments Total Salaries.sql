SELECT [DepartmentID], SUM([Salary]) AS TotalSalary
FROM [dbo].[Employees]
GROUP BY [DepartmentID]
ORDER BY [DepartmentID]
