CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
   Estate VARCHAR(255),
    City VARCHAR(255), 
	ClientID INT,
	StaffID INT
);

CREATE TABLE Waste_Management (
    CollectionID INT PRIMARY KEY,
    ClientID INT,
    AddressID INT,
    StaffID INT,
    Dateofcollection DATE,
    Typeofwastecollected VARCHAR(255),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID), 
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
)

CREATE TABLE Recycling (
    Typeofwastecollected VARCHAR(255),
    Dateofcollection DATE,
    AddressID INT,
    ClientID INT,
    PRIMARY KEY (Typeofwastecollected, Dateofcollection,  ClientID),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
)

CREATE TABLE Client (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(255),
    AddressID INT,
    City VARCHAR(255),
    ContactDetailsforClient INT,
    ClientEmail VARCHAR(255),
    Estate VARCHAR(255)
  )

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(255),
    ContactdetailsforStaff INT
)

Alter Table Client
ADD ClientEmail VARCHAR(255);
ADD Estate VARCHAR(255);