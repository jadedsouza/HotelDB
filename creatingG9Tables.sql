 CREATE DATABASE gr9SKODAWGS
USE gr9SKODAWGS
-- creating type tables
CREATE TABLE RoomType
(RoomTypeID INTEGER IDENTITY(1,1) primary key,
RoomTypeName varchar(30) not null,
RoomTypeDesc varchar(50) not null)
GO

CREATE TABLE PetType
(PetTypeID INTEGER IDENTITY(1,1) primary key,
PetTypeName varchar(30) not null,
PetTypeDesc varchar(50) not null)
GO

CREATE TABLE Agency
(AgencyID INTEGER IDENTITY(1,1) primary key,
AgencyName varchar(30) not null,
AgencyDesc varchar(50) not null)
GO

CREATE TABLE ServiceType
(ServiceTypeID INTEGER IDENTITY(1,1) primary key,
ServiceTypeName varchar(30) not null,
ServiceTypeDesc varchar(50) not null)
GO

CREATE TABLE FeeType
(FeeTypeID INTEGER IDENTITY(1,1) primary key,
FeeTypeName varchar(30) not null,
FeeTypeDesc varchar(50) not null)
GO

CREATE TABLE Cuisine
(RestCuisineID INTEGER IDENTITY(1,1) primary key,
RestCuisineName varchar(30) not null,
CuisineDesc varchar(50) not null)
GO

CREATE TABLE Meal
(MealID INTEGER IDENTITY(1,1) primary key,
MealName varchar(30) not null,
MealDesc varchar(50) not null)
GO

CREATE TABLE DisabilityType
(DisabilityTypeID INTEGER IDENTITY(1,1) primary key,
DisabilityTypeName varchar(30) not null,
DisabilityTypeDesc varchar(50) not null)
GO

CREATE TABLE IdentificationType
(IdentificationTypeID INTEGER IDENTITY(1,1) primary key,
IdentificationTypeName varchar(30) not null,
IdentificationTypeDesc varchar(50) not null)
GO

CREATE TABLE CustomerType
(CustomerTypeID INTEGER IDENTITY(1,1) primary key,
CustomerTypeName varchar(30) not null,
CustomerTypeDesc varchar(50) not null)
GO

CREATE TABLE Role
(RoleID INTEGER IDENTITY(1,1) primary key,
RoleName varchar(30) not null,
RoleDesc varchar(50) not null)
GO

CREATE TABLE Restaurant
(RestaurantID INTEGER IDENTITY(1,1) primary key,
RestaurantName varchar(30) not null,
RestaurantDesc varchar(50) not null)
GO
----------------------------------------------------------------

CREATE TABLE Room
(RoomID INTEGER IDENTITY (1,1) primary key,
RoomTypeID INT FOREIGN KEY REFERENCES RoomType not null,
RoomNumber varchar(6) not null,
FloorNumber varchar(4) not null)
GO

CREATE TABLE Disability
(DisabilityID INTEGER IDENTITY (1,1) primary key,
DisabilityTypeID INT FOREIGN KEY REFERENCES DisabilityType not null,
DisabilityName varchar(30) not null,
DisabilityDesc varchar(60) not null)
GO

CREATE TABLE Fee
(FeeID INTEGER IDENTITY (1,1) primary key,
FeeTypeID INT FOREIGN KEY REFERENCES FeeType not null,
FeeName varchar(30) not null,
FeeDesc varchar(60) not null,
FeeAmount  varchar(6) not null)
GO

CREATE TABLE RestMeal
(RestMealID INTEGER IDENTITY (1,1) primary key,
RestaurantID INT FOREIGN KEY REFERENCES Restaurant not null,
MealID INT FOREIGN KEY REFERENCES Meal not null
)
GO

CREATE TABLE Customer
(CustomerID INTEGER IDENTITY (1,1) primary key,
CustomerTypeID INT FOREIGN KEY REFERENCES CustomerType not null,
IdentificationTypeID INT FOREIGN KEY REFERENCES IdentificationType not null,
CustomerFName varchar(30) not null,
CustomerLName varchar(30) not null,
CustomerBirth DATE not null,
CustomerEmail varchar(30) not null,
CustomerPhoneNumber char(14) not null)
GO

CREATE TABLE DisabilityCustomer
(DisabilityCustID INTEGER IDENTITY (1,1) primary key,
CustomerID INT FOREIGN KEY REFERENCES Customer not null,
DisabilityID INT FOREIGN KEY REFERENCES Disability not null
)
GO

CREATE TABLE Booking
(BookingID INTEGER IDENTITY(1,1) primary key,
CustomerID INT FOREIGN KEY REFERENCES Customer not null,
AgencyID INT FOREIGN KEY REFERENCES Agency not null,
BookDate DATE not null)
GO

CREATE TABLE Pets
(PetID INTEGER IDENTITY(1,1) primary key,
BookingID INT FOREIGN KEY REFERENCES Booking not null,
PetTypeID INT FOREIGN KEY REFERENCES PetType not null)
GO

CREATE TABLE BookingRoom
(BookingRoomID INTEGER IDENTITY(1,1) primary key,
BookingID INT FOREIGN KEY REFERENCES Booking not null,
RoomID INT FOREIGN KEY REFERENCES Room not null,
BeginDate DATE not null,
EndDate DATE not null)
GO

CREATE TABLE Employee
(EmployeeID INTEGER IDENTITY(1,1) primary key,
IdentificationTypeID INT FOREIGN KEY REFERENCES IdentificationType not null,
RoleID INT FOREIGN KEY REFERENCES Role not null,
EmployeeFName varchar(30) not null,
EmployeeLName varchar(30) not null,
EmployeeBirth DATE not null,
EmployeeCity varchar(30) not null,
EmployeeState varchar(30) not null,
EmployeeCountry varchar(30) not null,
EmployeePhone char(14) not null,
EmployeeEmail varchar(30) not null)
GO

CREATE TABLE EmployeeRole
(EmployeeRoleID INTEGER IDENTITY(1,1) primary key,
RoleID INT FOREIGN KEY REFERENCES Role not null,
EmployeeID INT FOREIGN KEY REFERENCES Employee not null,
EmployeeBeginDate DATE not null,
EmployeeEndDate DATE not null)

CREATE TABLE Service
(ServiceID INTEGER IDENTITY(1,1) primary key,
ServiceTypeID INT FOREIGN KEY REFERENCES ServiceType not null,
FeeID INT FOREIGN KEY REFERENCES Fee not null,
ServiceName varchar(40) not null)


CREATE TABLE BookingRoomFee
(BKRoomID INTEGER IDENTITY(1,1) primary key,
BookingRoomID INT FOREIGN KEY REFERENCES BookingRoom not null,
ServiceID INT FOREIGN KEY REFERENCES Service not null)
GO

ALTER TABLE RestMEAL
ADD FOREIGN KEY (RestCuisineID) REFERENCES Cuisine(RestCuisineID)

ALTER TABLE bookingroom
ALTER COLUMN begindate datetime;

ALTER TABLE bookingroom
ALTER COLUMN enddate datetime;


INSERT INTO IdentificationType(IdentificationTypeName, IdentificationTypeDesc)
    VALUES('Drivers License', 'Drivers License for people from the United States')
GO
INSERT INTO Role(RoleName, RoleDesc)
    VALUES('Chef', 'They cook food at restaurants'),
    ('Waiter', 'They serve food and drink'),
    ('Admin', 'Administrator')
GO
