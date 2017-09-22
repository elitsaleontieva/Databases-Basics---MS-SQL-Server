CREATE TABLE People(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(200) NOT NULL,
Picture VARBINARY(MAX),
Height DECIMAL(15,2),
[Weight] DECIMAL (15,2),
Gender char(1) NOT NULL,
Birthdate date NOT NULL,
Biography NVARCHAR(MAX)
)

INSERT INTO People ([Name],Height,[Weight],Gender,Birthdate,Biography)
VALUES
('Name1',160,50,'f','1999-02-03','bio1'),
('Name2',162,60,'m','1999-02-03','bio2'),
('Name3',163,70,'f','1999-02-03','bio3'),
('Name4',164,80,'m','1999-02-03','bio4'),
('Name5',165,90,'f','1999-02-03','bio5')
