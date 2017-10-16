CREATE PROC usp_GetEmployeesSalaryAboveNumber ( @SALARY DECIMAL(18,4))
AS
BEGIN
SELECT FirstName,LastName FROM Employees
WHERE Salary>=@Salary
END
