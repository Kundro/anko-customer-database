SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteAddress 
	@AddressID int

AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM Addresses
	WHERE AddressID = @AddressID  

END
GO

EXEC DeleteAddress @AddressID = '2'
