INSERT INTO Waste_Management (CollectionID, ClientID, AddressID, StaffID, Dateofcollection, Typeofwastecollected)
VALUES
  (1, 10, 101, 101, '2023-11-11', 'Paper'),
  (2, 11, 102, 102, '2023-11-12', 'Plastic'),
  (3, 12, 103, 103, '2023-11-13', 'Glass');

  INSERT INTO Recycling (Typeofwastecollected, Dateofcollection, AddressID, ClientID)
VALUES
  ('Paper', '2023-11-11', 101, 10),
  ('Plastic', '2023-11-12', 102, 11),
  ('Glass', '2023-11-13', 103, 12);

INSERT INTO Client (ClientID, ClientName, AddressID, City, ContactDetailsforClient, ClientEmail, Estate)
VALUES
  (10, 'Mzee Duale', 101, 'Madaraka', 0734567890,'DualeAdan@yahoo.com', 'Tulia Court'),
  (11, 'Nguma Maikoli', 102, 'South  B', 0776543210,'Maikolikahindi@gmail.com', 'Al-Mukkaram'),
  (12, 'Simbs Mcheshi', 103, 'Nairobi West', 0755555555, 'Simbs001@gamil.com', 'Baiya Suites');

INSERT INTO Staff (StaffID, StaffName, ContactdetailsforStaff)
VALUES
  (101, 'John Doe', 0734567891),
  (102, 'Jane Smith', 0776543211),
  (103, 'Mike Johnson', 0755555556);

 INSERT INTO Address(AddressID, Estate, City, ClientID, StaffID)
VALUES
(101,'Tulia Court','Madaraka', 10, 101),
(102,'Al-Mukkaram','Madaraka', 11,103),
(103,'Baiya Suites','Nairobi West', 12, 101 ); 