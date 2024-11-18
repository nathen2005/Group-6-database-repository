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

INSERT INTO Waste_Management (CollectionID, ClientID, AddressID, StaffID, Dateofcollection, Typeofwastecollected)
VALUES
  (1, 10, 101, 101, '2023-11-11', 'Paper'),
  (2, 11, 102, 102, '2023-11-12', 'Plastic'),
  (3, 12, 103, 103, '2023-11-13', 'Glass');


CREATE TABLE Recycling (
    Typeofwastecollected VARCHAR(255),
    Dateofcollection DATE,
    AddressID INT,
    ClientID INT,
    PRIMARY KEY (Typeofwastecollected, Dateofcollection,  ClientID),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
)

INSERT INTO Recycling (Typeofwastecollected, Dateofcollection, AddressID, ClientID)
VALUES
  ('Paper', '2023-11-11', 101, 10),
  ('Plastic', '2023-11-12', 102, 11),
  ('Glass', '2023-11-13', 103, 12);

CREATE TABLE Client (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(255),
    AddressID INT,
    City VARCHAR(255),
    ContactDetailsforClient INT,
    ClientEmail VARCHAR(255),
    Estate VARCHAR(255)
     )
	 
INSERT INTO Client (ClientID, ClientName, AddressID, City, ContactDetailsforClient, ClientEmail, Estate)
VALUES
  (10, 'Mzee Duale', 101, 'Madaraka', 0734567890,'DualeAdan@yahoo.com', 'Tulia Court'),
  (11, 'Nguma Maikoli', 102, 'South  B', 0776543210,'Maikolikahindi@gmail.com', 'Al-Mukkaram'),
  (12, 'Simbs Mcheshi', 103, 'Nairobi West', 0755555555, 'Simbs001@gamil.com', 'Baiya Suites');

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(255),
    ContactdetailsforStaff INT
)

INSERT INTO Staff (StaffID, StaffName, ContactdetailsforStaff)
VALUES
  (101, 'John Doe', 0734567891),
  (102, 'Jane Smith', 0776543211),
  (103, 'Mike Johnson', 0755555556);

Alter Table Client
ADD ClientEmail VARCHAR(255);
ADD Estate VARCHAR(255);

CREATE TABLE Address (
    AddressID INT PRIMARY KEY,
   Estate VARCHAR(255),
    City VARCHAR(255), 
	ClientID INT,
	StaffID INT
);

INSERT INTO Address(AddressID, Estate, City, ClientID, StaffID)
VALUES
(101,'Tulia Court','Madaraka', 10, 101),
(102,'Al-Mukkaram','Madaraka', 11,103),
(103,'Baiya Suites','Nairobi West', 12, 101 );