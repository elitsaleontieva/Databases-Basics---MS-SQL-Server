CREATE TRIGGER tr_AccountBalanceChange ON Accounts FOR UPDATE
AS
BEGIN
 DECLARE @id int = (SELECT Id FROM deleted)
 DECLARE @OldBalance money = (SELECT Balance FROM deleted)
 DECLARE @NewBalance money = (SELECT Balance FROM inserted)
	IF(@OldBalance <> @NewBalance)
	BEGIN
	INSERT INTO Logs VALUES (@id,@OldBalance,@NewBalance)
	END
 
 
END
