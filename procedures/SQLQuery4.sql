 -- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
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

	INSERT INTO Customers(FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
	VALUES (@FirstName, @LastName, @PhoneNumber, @Email, @Notes, @TotalPurchasesAmount)
END
GO

EXEC CreateCustomer @FirstName = 'name', @LastName = 'surname', @PhoneNumber = '+11234567891123', @Email = 'mail@mail.ru', @Notes = 'note1', @TotalPurchasesAmount = 1;