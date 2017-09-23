CREATE TABLE Categories(
Id INT PRIMARY KEY IDENTITY NOT NULL,
CategoryName NVARCHAR(50) NOT NULL,
DailyRate DECIMAL(15,2) ,
WeeklyRate DECIMAL(15,2),
MonthlyRate DECIMAL(15,2),
WeekendRate DECIMAL(15,2)
)
INSERT INTO Categories(CategoryName,DailyRate,WeeklyRate,MonthlyRate,WeekendRate)
VALUES
('CategoryName1',NULL,NULL,NULL,NULL),
('CategoryName2',NULL,NULL,NULL,NULL),
('CategoryName3',NULL,NULL,NULL,NULL)

--Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
CREATE TABLE Cars(
Id INT PRIMARY KEY IDENTITY NOT NULL,
PlateNumber NVARCHAR(50) NOT NULL,
Manufacturer NVARCHAR(50) NOT NULL,
Model NVARCHAR(50) NOT NULL,
CarYear DATETIME,
CategoryId INT NOT NULL,
FOREIGN KEY (CategoryId) REFERENCES Categories(Id),
Doors INT,
Picture VARBINARY(MAX),
Condition NVARCHAR(50),
Available BIT
)
INSERT INTO Cars(PlateNumber, Manufacturer, Model, CategoryId)
VALUES 
('PlateNumber1','Manufacturer1','Model1',1),
('PlateNumber2','Manufacturer2','Model2',2),
('PlateNumber3','Manufacturer3','Model3',3)

--•	Employees (Id, FirstName, LastName, Title, Notes)
CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName  NVARCHAR(50) NOT NULL,
Title  NVARCHAR(50),
Notes  NVARCHAR(MAX) 
)

INSERT INTO Employees (FirstName, LastName)
VALUES
('FirstName1', 'LastName1'),
('FirstName2', 'LastName2'),
('FirstName3', 'LastName3')


CREATE TABLE Customers (
Id INT PRIMARY KEY IDENTITY NOT NULL,
DriverLicenceNumber INT NOT NULL,
FullName NVARCHAR(50) NOT NULL,
[Address] NVARCHAR(MAX),
City NVARCHAR(50),
ZIPCode NVARCHAR(50),
Notes NVARCHAR(50)
)

INSERT INTO Customers (DriverLicenceNumber, FullName)
VALUES 
( 123, 'FullName1'),
( 234, 'FullName2'),
( 567, 'FullName3')

CREATE TABLE RentalOrders (
Id INT PRIMARY KEY IDENTITY NOT NULL,
EmployeeId INT NOT NULL,
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
CustomerId INT NOT NULL,
FOREIGN KEY (CustomerId) REFERENCES Customers(Id),
CarId INT NOT NULL,
FOREIGN KEY (CarId) REFERENCES Cars(Id),
TankLevel DECIMAL (15,2),
KilometrageStart DECIMAL (15,2),
KilometrageEnd DECIMAL (15,2),
TotalKilometrage DECIMAL (15,2),
StartDate DATETIME,
EndDate DATETIME,
TotalDays DATETIME,
RateApplied INT,
TaxRate DECIMAL(15,2),
OrderStatus BIT,
Notes NVARCHAR(50)
)
INSERT INTO RentalOrders (EmployeeId,CustomerId, CarId)
VALUES
(1,1,1),
(2,2,2),
(3,3,3)
