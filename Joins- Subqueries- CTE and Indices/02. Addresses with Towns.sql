SELECT TOP (50)
e.FirstName,
e.LastName,
t.Name,
a.AddressText
FROM Employees AS e
  LEFT OUTER JOIN Addresses AS a
  ON e.AddressID = a.AddressID
  INNER JOIN Towns as t
  ON a.TownID = t.TownID
ORDER BY FirstName, LastName
