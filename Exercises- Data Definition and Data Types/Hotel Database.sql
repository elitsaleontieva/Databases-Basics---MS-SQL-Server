CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Title NVARCHAR(50),
Notes NVARCHAR(MAX)
)


INSERT INTO Employees(FirstName,LastName)
VALUES
( 'FirstName1', 'LastName1'),
( 'FirstName2', 'LastName2'),
( 'FirstName3', 'LastName3')

--Customers (AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)

CREATE TABLE Customers(
AccountNumber INT PRIMARY KEY IDENTITY NOT NULL,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
PhoneNumber INT,
EmergencyName NVARCHAR(50),
EmergencyNumber NVARCHAR(50),
Notes NVARCHAR(MAX)
)

INSERT INTO Customers(FirstName, LastName)
VALUES
('FirstName1', 'LastName1'),
('FirstName2', 'LastName2'),
('FirstName3', 'LastName3')

--	RoomStatus (RoomStatus, Notes)
CREATE TABLE RoomStatus(
RoomStatus  NVARCHAR(50) PRIMARY KEY  NOT NULL,
Notes NVARCHAR(50)
)

INSERT INTO RoomStatus(RoomStatus,Notes)
VALUES
('1','Notes1'),
('2','Notes2'),
('3','Notes3')

--	RoomTypes (RoomType, Notes)
CREATE TABLE RoomTypes(
RoomType NVARCHAR(50) PRIMARY KEY,
Notes NVARCHAR(MAX)
)

INSERT INTO RoomTypes(RoomType, Notes)
VALUES
('RoomType1', 'Notes1'),
('RoomType2', 'Notes2'),
('RoomType3', 'Notes3')

--	BedTypes (BedType, Notes)
CREATE TABLE BedTypes(
BedType NVARCHAR(50) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)

INSERT INTO BedTypes(BedType, Notes)
VALUES
('BedType1','Notes1'),
('BedType2','Notes2'),
('BedType3','Notes3')

--	Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
CREATE TABLE Rooms(
RoomNumber INT PRIMARY KEY IDENTITY NOT NULL,
RoomType NVARCHAR(50),
BedType NVARCHAR(50),
Rate INT,
RoomStatus NVARCHAR(50),
Notes NVARCHAR(MAX) 
)
INSERT INTO Rooms(RoomType)
VALUES
('RoomType1'),
('RoomType2'),
('RoomType3')
--	Payments (Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
CREATE TABLE Payments(
Id INT PRIMARY KEY IDENTITY NOT NULL,
EmployeeId INT NOT NULL,
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
PaymentDate DATETIME,
AccountNumber INT,
FirstDateOccupied DATETIME,
LastDateOccupied DATETIME,
TotalDays INT,
AmountCharged DECIMAL(15,2),
TaxRate DECIMAL(15,2),
TaxAmount DECIMAL(15,2),
PaymentTotal DECIMAL(15,2),
Notes NVARCHAR(50)
)
INSERT INTO Payments(EmployeeId)
VALUES
(1),
(2),
(3)



--	Occupancies (Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
CREATE TABLE Occupancies(
Id INT PRIMARY KEY IDENTITY NOT NULL,
EmployeeId INT NOT NULL,
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id),
DateOccupied DATETIME,
AccountNumber INT,
RoomNumber INT,
RateApplied INT,
PhoneCharge DECIMAL(15,2),
Notes NVARCHAR(50)
)

INSERT INTO Occupancies(EmployeeId)
VALUES
(1),
(2),
(3)
