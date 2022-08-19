CREATE DATABASE customer

Use [customer]
GO

/* DROP DATABASE customer */

CREATE TABLE [Customer]
(
CustomerID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
FirstName nvarchar(50) NULL,
LastName nvarchar(50) NOT NULL,
PhoneNumber nvarchar(15) NULL 
CHECK (PhoneNumber LIKE '+[1-9]' + REPLICATE('[0-9]', 13)),
Email nvarchar(100) NULL
CHECK (Email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'),
Notes nvarchar(MAX) NOT NULL,
TotalPurchasesAmount money NULL,
)

SELECT * FROM Customer

TRUNCATE TABLE Customer

DROP TABLE Customer

CREATE TABLE Address
(
AddressID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
CustomerID int NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
AddressLine nvarchar(100) NOT NULL,
AddressLine2 nvarchar(100) NULL,
AddressType nvarchar(13) NOT NULL,
City nvarchar(50) NOT NULL,
PostalCode nvarchar(6) NOT NULL,
State nvarchar(20) NOT NULL,
Country nvarchar(30) NOT NULL
)

SELECT * FROM Address

TRUNCATE TABLE Address

DROP TABLE Address

/* Test PhoneNumber and Email */
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('Kundro','+21231233213223','mail@mail.ru','note1')
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('Kundro2','+22312332132112','mail@mail.ru','note2')