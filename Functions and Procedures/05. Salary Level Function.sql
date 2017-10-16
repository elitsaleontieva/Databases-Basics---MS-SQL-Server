CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS VARCHAR(10)
AS
BEGIN
DECLARE @LEVEL VARCHAR(10)
  IF(@salary < 30000 )
    SET @LEVEL= 'Low'
 ELSE IF(@salary <= 50000  )
    SET @LEVEL= 'Average'
  ELSE IF(@salary >  50000 )
    SET @LEVEL= 'High'
	  RETURN @LEVEL
 END
