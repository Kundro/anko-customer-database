SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE CreateAddress 
	@CustomerID int, 
	@AddressLine nvarchar(100),
	@AddressLine2 nvarchar(100),
	@AddressType nvarchar(10),
	@City nvarchar(50),
	@PostalCode nvarchar(6),
	@StateName nvarchar(20),
	@Country nvarchar(30)

AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Addresses (CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, StateName, Country)
	VALUES (@CustomerID, @AddressLine, @AddressLine2, @AddressType, @City, @PostalCode, @StateName, @Country)
END
GO

EXEC CreateAddress @CustomerID = 1, @AddressLine = 'line1', @AddressLine2 = 'line2', @AddressType = 'Shipping', @City = 'Chicago', @PostalCode = '60666', @StateName = 'Illinois', @Country = 'USA'