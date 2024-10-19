Create Table Waste_Management (
CollectionID INT,
ClientID INT,
AddressID INT,
StaffID INT,
Dateofcollection INT,
Typeofwastecollected VARCHAR(255)
)

Create Table Recycling (
Typeofwastecollected VARCHAR(255),
Dateofcollection INT,
AddressID INT,
ClientID INT
)


Create Table Client(
ClientID INT,
ClientName VARCHAR(255),
AddressID INT,
City VARCHAR(255),
ContactDetailsforClient INT
)

Create Table Staff(
StaffID INT,
StaffName VARCHAR(255),
ContactdetailsforStaff INT
)

Alter Table Client
ADD ClientEmail VARCHAR(255);
ADD Estate VARCHAR(255);

Create Table Payments(
PaymentID INT,
ClientID INT,
Typeofwastecollected VARCHAR(255),
Pointsearned INT
)

ALTER TABLE Recycling
ADD Pointsearned INT;