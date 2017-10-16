CREATE PROC usp_EmployeesBySalaryLevel (@LEVEL varchar(10))
AS
  SELECT FirstName, LastName
  FROM Employees
  WHERE dbo.ufn_GetSalaryLevel(Salary) = @LEVEL
