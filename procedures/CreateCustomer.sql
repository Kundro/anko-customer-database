SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE CreateCustomer
	@FirstName nvarchar(50), 
	@LastName nvarchar(50),
	@PhoneNumber nvarchar(15),
	@Email nvarchar(50),
	@Notes nvarchar(max),
	@TotalPurchasesAmount money
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Customer(FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
	VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Notes, @TotalPurchasesAmount)
END
GO

DROP PROCEDURE CreateCustomer

EXEC CreateCustomer @FirstName = 'name', @LastName = 'surname', @PhoneNumber = '+11234567891123', @Email = 'mail@mail.ru', @Notes = 'note1', @TotalPurchasesAmount = 1;