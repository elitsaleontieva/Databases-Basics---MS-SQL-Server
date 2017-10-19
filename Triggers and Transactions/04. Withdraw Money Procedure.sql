CREATE PROC usp_WithdrawMoney (@AccountId INT, @MoneyAmount DECIMAL(15,4)) 
AS
BEGIN TRANSACTION
UPDATE Accounts SET Balance = Balance - @MoneyAmount
WHERE Id = @AccountId
IF @@ROWCOUNT <> 1 
BEGIN
  ROLLBACK
  RAISERROR('Invalid account!', 16, 1)
  RETURN
END
COMMIT
