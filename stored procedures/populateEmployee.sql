use gr9skodawgs
ALTER PROCEDURE jmdPopulateEmployee
@IdentificationName varchar(30),
@EmployeeFName varchar(30),
@EmployeeLName varchar(30),
@EmployeeBirth DATE,
@EmployeeCity varchar(30),
@EmployeeState varchar(30),
@EmployeeCountry varchar(30),
@EmployeePhone char(14),
@EmployeeEmail varchar(30),
@RoleName varchar (30)

AS
    DECLARE @E_ID INT, @R_ID INT, @I_ID INT
BEGIN TRANSACTION empPopulate
--SET @E_ID = (SELECT SCOPE_IDENTITY())
SET @R_ID = (SELECT RoleID FROM Role WHERE Rolename = @RoleName)
SET @I_ID = (SELECT IdentificationTypeID from IdentificationType
                WHERE IdentificationTypeName = @IdentificationName)

INSERT INTO Employee(IdentificationTypeID, RoleID, EmployeeFName,
                     EmployeeLName, EmployeeBirth, EmployeeCity, EmployeeState, EmployeeCountry,
                     EmployeePhone, EmployeeEmail)
VALUES(@I_ID, @R_ID, @EmployeeFName, @EmployeeLName, @EmployeeBirth, @EmployeeCity,
       @EmployeeState, @EmployeeCountry, @EmployeePhone, @EmployeeEmail)

COMMIT TRANSACTION empPopulate
GO

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Passport',
@EmployeeFName = 'Jade',
@EmployeeLName = 'DSouza',
@EmployeeBirth = '22 November 2000',
@EmployeeCity = 'Dubai',
@EmployeeState = 'DubYE',
@EmployeeCountry = 'United Arab Emirates',
@EmployeePhone = '2066377982',
@EmployeeEmail = 'jadedsouza@hotmail.com',
@RoleName = 'Chef'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Clover',
@EmployeeLName = 'Li',
@EmployeeBirth = '23 November 2000',
@EmployeeCity = 'Seattle',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '2066377983',
@EmployeeEmail = 'cloverli@hotmail.com',
@RoleName = 'Chef'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Kevin',
@EmployeeLName = 'Ko',
@EmployeeBirth = '24 November 2000',
@EmployeeCity = 'San Francisco',
@EmployeeState = 'California',
@EmployeeCountry = 'United States',
@EmployeePhone = '2066377984',
@EmployeeEmail = 'kevinko@gmail.com',
@RoleName = 'Chef'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Passport',
@EmployeeFName = 'Susana',
@EmployeeLName = 'Muller',
@EmployeeBirth = '1876-04-01',
@EmployeeCity = 'Elysian',
@EmployeeState = 'Minnesota',
@EmployeeCountry = 'United States',
@EmployeePhone = '2066377985',
@EmployeeEmail = 'susymuller@gmail.com',
@RoleName = 'Admin'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Passport',
@EmployeeFName = 'Akash',
@EmployeeLName = 'Sinha',
@EmployeeBirth = '1876-09-01',
@EmployeeCity = 'Mangalore',
@EmployeeState = 'Karnataka',
@EmployeeCountry = 'India',
@EmployeePhone = '2056377982',
@EmployeeEmail = 'akashsinha@uw.edu',
@RoleName = 'Waiter'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Adam',
@EmployeeLName = 'Oxbridge',
@EmployeeBirth = '2001-09-01',
@EmployeeCity = 'Warsaw',
@EmployeeState = 'Georgia',
@EmployeeCountry = 'India',
@EmployeePhone = '2066377986',
@EmployeeEmail = 'adamoxbridge@gmail.com',
@RoleName = 'Waiter'


EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Steve',
@EmployeeLName = 'Morrissey',
@EmployeeBirth = '2001-09-02',
@EmployeeCity = 'Atlanta',
@EmployeeState = 'Georgia',
@EmployeeCountry = 'United States',
@EmployeePhone = '2066377987',
@EmployeeEmail = 'thesmiths@gmail.com',
@RoleName = 'Manager'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Passport',
@EmployeeFName = 'Steven',
@EmployeeLName = 'Smiley',
@EmployeeBirth = '2001-09-10',
@EmployeeCity = 'Oregon',
@EmployeeState = 'Portland',
@EmployeeCountry = 'United States',
@EmployeePhone = '2066377988',
@EmployeeEmail = 'smiley@gmail.com',
@RoleName = 'Cleaner'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Clinton',
@EmployeeLName = 'Lobo',
@EmployeeBirth = '1990-09-10',
@EmployeeCity = 'Shanghai',
@EmployeeState = 'Fujian',
@EmployeeCountry = 'China',
@EmployeePhone = '2066377989',
@EmployeeEmail = 'loboc@gmail.com',
@RoleName = 'Front Desk'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Claudio',
@EmployeeLName = 'Lopez',
@EmployeeBirth = '1999-04-10',
@EmployeeCity = 'Boston',
@EmployeeState = 'Massachusetts',
@EmployeeCountry = 'United States',
@EmployeePhone = '2166377989',
@EmployeeEmail = 'lopezc@gmail.com',
@RoleName = 'Security'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Joe',
@EmployeeLName = 'Brosnik',
@EmployeeBirth = '1999-09-10',
@EmployeeCity = 'Boston',
@EmployeeState = 'Massachusetts',
@EmployeeCountry = 'United States',
@EmployeePhone = '2166377988',
@EmployeeEmail = 'joebros@gmail.com',
@RoleName = 'Bellman'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Chad',
@EmployeeLName = 'Brosnik',
@EmployeeBirth = '1999-09-10',
@EmployeeCity = 'Boston',
@EmployeeState = 'Massachusetts',
@EmployeeCountry = 'United States',
@EmployeePhone = '2166377987',
@EmployeeEmail = 'chadbros@gmail.com',
@RoleName = 'cleaner'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Naomi',
@EmployeeLName = 'McKenzie',
@EmployeeBirth = '1993-10-26',
@EmployeeCity = 'Bellevue',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '2166377986',
@EmployeeEmail = 'naomim@gmail.com',
@RoleName = 'Front Desk'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'John',
@EmployeeLName = 'McCane',
@EmployeeBirth = '1993-02-26',
@EmployeeCity = 'Bothell',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '2166377985',
@EmployeeEmail = 'johnm@gmail.com',
@RoleName = 'Front Desk'

-----------
EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Alison',
@EmployeeLName = 'Parker',
@EmployeeBirth = '1993-02-26',
@EmployeeCity = 'Redmond',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '3166377980',
@EmployeeEmail = 'alisonparker@gmail.com',
@RoleName = 'Security'

EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Camille',
@EmployeeLName = 'DCosta',
@EmployeeBirth = '2001-02-26',
@EmployeeCity = 'Kent',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '3166377981',
@EmployeeEmail = 'camilled@hotmail.com',
@RoleName = 'Manager'
----------------------------------------
EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Claire',
@EmployeeLName = 'Honda',
@EmployeeBirth = '1993-08-26',
@EmployeeCity = 'Yakima',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '3266377985',
@EmployeeEmail = 'claireh@gmail.com',
@RoleName = 'Front Desk'
EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Sarah',
@EmployeeLName = 'Ahmed',
@EmployeeBirth = '1970-04-25',
@EmployeeCity = 'Renton',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '3266377985',
@EmployeeEmail = 'sarah@gmail.com',
@RoleName = 'Security'
EXECUTE jmdPopulateEmployee
@IdentificationName = 'Drivers License',
@EmployeeFName = 'Melwin',
@EmployeeLName = 'Fernandes',
@EmployeeBirth = '1960-07-26',
@EmployeeCity = 'Puyallup',
@EmployeeState = 'Washington',
@EmployeeCountry = 'United States',
@EmployeePhone = '3866377985',
@EmployeeEmail = 'melf@gmail.com',
@RoleName = 'Bellman'
EXECUTE jmdPopulateEmployee
@IdentificationName = 'ID Card',
@EmployeeFName = 'Josef',
@EmployeeLName = 'DSouza',
@EmployeeBirth = '1998-05-26',
@EmployeeCity = 'San Francisco',
@EmployeeState = 'California',
@EmployeeCountry = 'United States',
@EmployeePhone = '3278377985',
@EmployeeEmail = 'jods@gmail.com',
@RoleName = 'Cleaner'
