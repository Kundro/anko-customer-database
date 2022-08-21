SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateCustomer 
	@FirstName nvarchar(50), 
	@LastName nvarchar(50),
	@PhoneNumber nvarchar(15),
	@Email nvarchar(50),
	@Notes nvarchar(max),
	@TotalPurchasesAmount money
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Customer
	SET FirstName = @FirstName, LastName = @LastName, PhoneNumber = @PhoneNumber, Email = @Email, Notes = @Notes, TotalPurchasesAmount = @TotalPurchasesAmount
END
GO

EXEC UpdateCustomer @FirstName = 'newName2', @LastName = 'newSurname2', @PhoneNumber = '+11234567891123', @Email = 'mail@mail.ru', @Notes = 'newNote', @TotalPurchasesAmount = 1