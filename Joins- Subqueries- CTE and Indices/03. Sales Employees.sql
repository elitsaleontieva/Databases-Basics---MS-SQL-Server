SELECT
e.EmployeeID,
e.FirstName,
e.LastName,
d.Name AS 'DepartmentName'
FROM Employees AS e
  INNER JOIN Departments as d
  ON e.DepartmentID = d.DepartmentID
  WHERE d.Name LIKE 'Sales'
ORDER BY e.EmployeeID
