CREATE TABLE Directors(
Id INT PRIMARY KEY IDENTITY NOT NULL,
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO Directors
VALUES
('DirectorName1','Notes1'),
('DirectorName2','Notes2'),
('DirectorName3','Notes3'),
('DirectorName4','Notes4'),
('DirectorName5','Notes5')



--Genres (Id, GenreName, Notes)
CREATE TABLE Genres(
Id INT PRIMARY KEY IDENTITY NOT NULL,
GenreName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
INSERT INTO Genres
VALUES
('GenreName1','Notes1'),
('GenreName2','Notes2'),
('GenreName3','Notes3'),
('GenreName4','Notes4'),
('GenreName5','Notes5')



-- Categories (Id, CategoryName, Notes)
CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY,
CategoryName NVARCHAR(50) ,
Notes NVARCHAR(MAX)
)
INSERT INTO Categories
VALUES
('CategoryName1','Notes1'),
('CategoryName2','Notes2'),
('CategoryName3','Notes3'),
('CategoryName4','Notes4'),
('CategoryName5','Notes5')



--Movies (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)


CREATE TABLE Movies(
Id INT PRIMARY KEY IDENTITY,
Title NVARCHAR(50),
DirectorId INT,
CopyrightYear DATE,
[Length] TIME,
GenreId INT UNIQUE NOT NULL,
CategoryId INT UNIQUE NOT NULL,
)


INSERT INTO Movies(Title,DirectorId,CopyrightYear,[Length],GenreId,CategoryId)
VALUES
('Title1',1,'1990-05-03',NULL,1,1),
('Title1',2,'1990-05-03',NULL,2,2),
('Title1',3,'1990-05-03',NULL,3,3),
('Title1',4,'1990-05-03',NULL,4,4),
('Title1',5,'1990-05-03',NULL,5,5)
