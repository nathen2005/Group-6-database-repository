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
ContactDetailsforClient DOUBLE
)

Create Table Staff(
StaffID INT,
StaffName VARCHAR(255),
ContactdetailsforStaff DOUBLE
)