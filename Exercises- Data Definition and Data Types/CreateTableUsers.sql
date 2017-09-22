CREATE TABLE Users(
Id BIGINT PRIMARY KEY IDENTITY,
--	Id – unique number for every user. There will be no more than 263-1 users. (Auto incremented)
[Username] VARCHAR(30) UNIQUE  NOT NULL,
--	Username – unique identifier of the user will be no more than 30 characters (non Unicode). (Required)
[Password] VARCHAR(26) NOT NULL,
--	Password – password will be no longer than 26 characters (non Unicode). (Required)
ProfilePicture VARBINARY(MAX),
--	ProfilePicture – image with size up to 900 KB. 
LastLoginTime DATE,
--	LastLoginTime
IsDeleted bit
--	IsDeleted – shows if the user deleted his/her profile. Possible states are true or false.
)

INSERT INTO Users([UserName],[Password],IsDeleted)
VALUES
('UserName1',123,1),
('UserName2',133,0),
('UserName3',143,1),
('UserName4',153,0),
('UserName5',163,1)
