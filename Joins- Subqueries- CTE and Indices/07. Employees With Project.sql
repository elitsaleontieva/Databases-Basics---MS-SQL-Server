SELECT TOP 5
e.EmployeeID,
e.FirstName,
p.Name AS DeptName
FROM Employees AS e
LEFT OUTER JOIN EmployeesProjects AS ep
  ON ep.EmployeeID = e.EmployeeID
  LEFT OUTER JOIN Projects AS p
  ON ep.ProjectID = p.ProjectID
 WHERE p.StartDate > '2002-08-13'
 ORDER BY e.EmployeeID
