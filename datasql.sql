Use [CustomerLib_Kundro]
GO

/* Add correct Customer values */
/* SELECT * FROM Customer */

INSERT INTO Customer (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount) VALUES ('name1', 'surname1', '+21231233213223', 'email@gmail.ru', 'note1', '1')
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('surname1', '+21231233213223', 'email@gmail.ru', 'note1')

/* Incorrect phone number */
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('surname1', '2123123321322', 'email@gmail.ru', 'note1')
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('surname1', '+21231233213', 'email@gmail.ru', 'note1')

/* Incorrect email */
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('surname1', '+2123123321322', 'emailgmail.ru', 'note1')
INSERT INTO Customer (LastName, PhoneNumber, Email, Notes) VALUES ('surname1', '+2123123321321', 'email@gmailru', 'note1')


/* Add correct Address values */
/* SELECT * FROM Addresses */

INSERT INTO Addresses (CustomerID, AddressLine, AddressLine2, AddressType, City, PostalCode, StateName, Country) VALUES (1, 'line1', 'line2', 'Shipping', 'Chicago', '60666', 'Illinois', 'USA')
INSERT INTO Addresses (CustomerID, AddressLine, AddressType, City, PostalCode, StateName, Country) VALUES (1, 'line1', 'Shipping', 'Chicago', '60666', 'Illinois', 'USA')

/* Incorrect address type */
INSERT INTO Addresses (CustomerID, AddressLine, AddressType, City, PostalCode, StateName, Country) VALUES (1, 'line1', 'Wrong', 'Chicago', '60666', 'Illinois', 'USA')

/* Incorrect country */
INSERT INTO Addresses (CustomerID, AddressLine, AddressType, City, PostalCode, StateName, Country) VALUES (1, 'line1', 'Shipping', 'Chicago', '60666', 'Illinois', 'Belarus')

