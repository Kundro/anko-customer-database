SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateAddress 
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

	UPDATE Addresses
	SET  CustomerID = @CustomerID, AddressLine = @AddressLine, AddressLine2 = @AddressLine2, AddressType = @AddressType,
	City = @City, PostalCode = @PostalCode, StateName = @StateName, Country = @Country
END
GO

DROP PROCEDURE UpdateAddress

EXEC UpdateAddress @CustomerID = 2, @AddressLine = 'newLine', @AddressLine2 = 'newLine2', @AddressType = 'Billing', @City = 'New York', @PostalCode = '20111', @StateName = 'New York', @Country = 'USA'
