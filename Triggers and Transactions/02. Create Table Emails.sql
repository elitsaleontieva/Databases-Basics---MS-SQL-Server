CREATE TRIGGER tr_Email ON Logs FOR INSERT
AS
BEGIN
 DECLARE @Id  int = (SELECT LogId FROM inserted)
 DECLARE @Subject  varchar(200) = ( CONCAT('Balance change for account: ', @Id))
   DECLARE @OldSum money = (SELECT OldSum FROM deleted);
  DECLARE @NewSum money = (SELECT NewSum FROM deleted);
 DECLARE @Body varchar(200) = CONCAT('On ', GETDATE(), ' your balance was changed from ', @OldSum, ' to ', @NewSum, '.'); 
	
	  INSERT INTO NotificationEmails (Recipient, Subject, Body) 
  VALUES (@Id, @subject, @body)
 
 
END
