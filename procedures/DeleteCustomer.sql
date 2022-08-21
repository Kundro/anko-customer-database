SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteCustomer 
	@CustomerID int

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM Customer
	WHERE CustomerID = @CustomerID
END
GO

EXEC DeleteCustomer @CustomerID = '1'