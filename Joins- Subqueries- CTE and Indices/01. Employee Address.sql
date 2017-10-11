SELECT TOP (5)
e.EmployeeId,
e.JobTitle,
e.AddressId,
a.AddressText
FROM Employees AS e
  LEFT OUTER JOIN Addresses AS a
  ON e.AddressID = a.AddressID
ORDER BY AddressID
