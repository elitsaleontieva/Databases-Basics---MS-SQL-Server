SELECT MIN(a.AverageSalary) AS MinAverageSalary
FROM
(
SELECT AVG(Salary) AS AverageSalary FROM Employees AS e
GROUP BY e.DepartmentID
) AS a
