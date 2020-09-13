
CREATE PROCEDURE jmdPopulateCustomer
@IdentificationName varchar(30),
@CustomerFName varchar(30),
@CustomerLName varchar(30),
@CustomerBirth DATE,
@CustomerPhone char(14),
@CustomerEmail varchar(30),
@CustomerType varchar(7),
@CustomerNationality varchar (30)

AS
    DECLARE @R_ID INT, @I_ID INT
BEGIN TRANSACTION custPopulate
--SET @E_ID = (SELECT SCOPE_IDENTITY())
SET @R_ID = (SELECT CustomerTypeID FROM CustomerType WHERE CustomerTypename = @CustomerType)
SET @I_ID = (SELECT IdentificationTypeID from IdentificationType
                WHERE IdentificationTypeName = @IdentificationName)

INSERT INTO Customer(IdentificationTypeID, CustomerTypeID, CustomerFName,
                     CustomerLName, CustomerBirth,
                     CustomerPhoneNumber, CustomerEmail, CustomerNationality)
VALUES(@I_ID, @R_ID, @CustomerFName, @CustomerLName, @CustomerBirth,
       @CustomerPhone, @CustomerEmail, @CustomerNationality)

COMMIT TRANSACTION custPopulate
GO

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Drivers License',
@CustomerFName = 'Greg',
@CustomerLName = 'Hay',
@CustomerBirth = '1960-05-26',
@CustomerPhone = '2065598812',
@CustomerEmail = 'greghay@gmail.com',
@CustomerType = 'Adult',
@CustomerNationality = 'American'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Drivers License',
@CustomerFName = 'Gregoria',
@CustomerLName = 'Hay',
@CustomerBirth = '1961-05-26',
@CustomerPhone = '2065598813',
@CustomerEmail = 'gregoriahay@gmail.com',
@CustomerType = 'Adult',
@CustomerNationality = 'American'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Gregory',
@CustomerLName = 'Hay',
@CustomerBirth = '1960-03-26',
@CustomerPhone = '2065597812',
@CustomerEmail = 'gregoryhay@gmail.com',
@CustomerType = 'Adult',
@CustomerNationality = 'Indian'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Gregorina',
@CustomerLName = 'Hay',
@CustomerBirth = '1960-03-26',
@CustomerPhone = '2065597815',
@CustomerEmail = 'gregorina@hotmail.com',
@CustomerType = 'Adult',
@CustomerNationality = 'Chinese'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'ID Card',
@CustomerFName = 'GDog',
@CustomerLName = 'Hay',
@CustomerBirth = '1940-03-26',
@CustomerPhone = '2065597818',
@CustomerEmail = 'gdoghay@hotmail.com',
@CustomerType = 'Senior',
@CustomerNationality = 'Emirati'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'ID Card',
@CustomerFName = 'Database',
@CustomerLName = 'GOD',
@CustomerBirth = '1963-09-22',
@CustomerPhone = '1065597815',
@CustomerEmail = 'databasegod@uw.edu.com',
@CustomerType = 'Adult',
@CustomerNationality = 'Polish'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'ID Card',
@CustomerFName = 'Greg',
@CustomerLName = 'THay',
@CustomerBirth = '1967-09-22',
@CustomerPhone = '1065607815',
@CustomerEmail = 'gregthay@uw.edu.com',
@CustomerType = 'Adult',
@CustomerNationality = 'Chinese'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Jade-Meg',
@CustomerLName = 'DSouza',
@CustomerBirth = '2000-11-22',
@CustomerPhone = '2036377082',
@CustomerEmail = 'jademed@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Emirati'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Clementine',
@CustomerLName = 'Rego',
@CustomerBirth = '1970-11-22',
@CustomerPhone = '2036387082',
@CustomerEmail = 'clemrego@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Emirati'

---------
EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Kevin',
@CustomerLName = 'Ko',
@CustomerBirth = '1940-11-22',
@CustomerPhone = '2036387083',
@CustomerEmail = 'kev@uw.edu',
@CustomerType = 'Senior',
@CustomerNationality = 'Chinese'
-------------------------------
EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Naomi',
@CustomerLName = 'Adams',
@CustomerBirth = '1975-02-22',
@CustomerPhone = '2036387084',
@CustomerEmail = 'naomiadams@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Finnish'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Jerilyn',
@CustomerLName = 'Margo',
@CustomerBirth = '1993-11-29',
@CustomerPhone = '2036387085',
@CustomerEmail = 'jerilynmargo@yahoo.com',
@CustomerType = 'Adult',
@CustomerNationality = 'British'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Josef',
@CustomerLName = 'DMello',
@CustomerBirth = '1970-11-23',
@CustomerPhone = '2036387086',
@CustomerEmail = 'josefdmello@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Mexican'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'ID Card',
@CustomerFName = 'Josefina',
@CustomerLName = 'Regoan',
@CustomerBirth = '1973-11-21',
@CustomerPhone = '2036387087',
@CustomerEmail = 'jregoan@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Emirati'
-------------------------------------------------
EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Clement',
@CustomerLName = 'Kashni',
@CustomerBirth = '1970-11-22',
@CustomerPhone = '2036387088',
@CustomerEmail = 'clemkashni@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'British'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Drivers License',
@CustomerFName = 'Michael',
@CustomerLName = 'Williams',
@CustomerBirth = '1945-11-22',
@CustomerPhone = '2036387089',
@CustomerEmail = 'michaelwilliams@hotmail.com',
@CustomerType = 'Senior',
@CustomerNationality = 'American'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Kenny',
@CustomerLName = 'The Cat',
@CustomerBirth = '2000-02-22',
@CustomerPhone = '2036387090',
@CustomerEmail = 'kennythecat@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'American'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Rizzo',
@CustomerLName = 'Yorkie',
@CustomerBirth = '1995-03-22',
@CustomerPhone = '2036387091',
@CustomerEmail = 'rizzoyorkie@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Emirati'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Passport',
@CustomerFName = 'Eli',
@CustomerLName = 'Black',
@CustomerBirth = '1982-11-22',
@CustomerPhone = '2036387092',
@CustomerEmail = 'blackeli@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'Emirati'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Drivers License',
@CustomerFName = 'Mushyina',
@CustomerLName = 'Peasa',
@CustomerBirth = '1998-06-02',
@CustomerPhone = '2036387093',
@CustomerEmail = 'mushypeas@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'American'

EXECUTE jmdPopulateCustomer
@IdentificationName = 'Drivers License',
@CustomerFName = 'Clover',
@CustomerLName = 'Lii',
@CustomerBirth = '1998-06-06',
@CustomerPhone = '2036387097',
@CustomerEmail = 'cli@uw.edu',
@CustomerType = 'Adult',
@CustomerNationality = 'American'
