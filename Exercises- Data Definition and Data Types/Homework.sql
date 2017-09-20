CREATE DATABASE Minions


--add table Minions (Id, Name, Age). 
CREATE TABLE Minions(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(50) NOT NULL,
AGE INT DEFAULT(0),
)


--Then add new table Towns (Id, Name). Set Id columns of both tables to be primary key as constraint.
CREATE TABLE  Towns(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(50) NOT NULL,

)

--Change the structure of the Minions table to have new column TownId 
--that would be of the same type as the Id column of Towns table.
-- Add new constraint that makes TownId foreign key and references to Id column of Towns table.
ALTER TABLE Minions
ADD TownId INT,
FOREIGN KEY (TownId) REFERENCES Towns(Id)


INSERT INTO Minions ([Name],AGE)
VALUES
('Kevin',	22),
('Bob',	15),
('Steward', NULL)



