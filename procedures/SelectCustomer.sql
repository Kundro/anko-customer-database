SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SelectCustomer
	@CustomerID int

AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Customer WHERE CustomerID = @CustomerID
END
GO

/*
DROP PROCEDURE SelectCustomer
*/

EXEC SelectCustomer @CustomerID ='1'
