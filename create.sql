Use [master]
GO

CREATE DATABASE CustomerLib_Kundro

Use [CustomerLib_Kundro]
GO

DROP DATABASE CustomerLib_Kundro

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

CREATE TABLE Addresses
(
AddressID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
CustomerID int NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
AddressLine nvarchar(100) NOT NULL,
AddressLine2 nvarchar(100) NULL,
AddressType nvarchar(10) NOT NULL CHECK (AddressType IN ('Shipping', 'Billing')),
City nvarchar(50) NOT NULL,
PostalCode nvarchar(6) NOT NULL,
StateName nvarchar(20) NOT NULL,
Country nvarchar(30) NOT NULL CHECK (Country IN ('USA', 'United States', 'united states', 'Canada', 'canada'))
)

SELECT * FROM Addresses

TRUNCATE TABLE Addresses

DROP TABLE Addresses
