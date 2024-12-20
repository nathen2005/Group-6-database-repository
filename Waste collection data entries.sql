-- Insert data into the Client table
INSERT INTO Client (ClientID, ClientName, AddressID, City, ContactDetailsforClient)
VALUES
  (10, 'Mzee Duale', 101, 'Madaraka', 0734567890),
  (11, 'Nguma Maikoli', 102, 'South  B', 0776543210),
  (12, 'Simbs Mcheshi', 103, 'Nairobi We', 0755555555);

-- Insert data into the Staff table
INSERT INTO Staff (StaffID, StaffName, ContactdetailsforStaff)
VALUES
  (101, 'John Doe', 0734567891),
  (102, 'Jane Smith', 0776543211),
  (103, 'Mike Johnson', 0755555556);

-- Insert data into the Waste_Management table
INSERT INTO Waste_Management (CollectionID, ClientID, AddressID, StaffID, Dateofcollection, Typeofwastecollected)
VALUES
  (1, 10, 101, 101, 20231111, 'Paper'),
  (2, 11, 102, 102, 20231112, 'Plastic'),
  (3, 12, 103, 103, 20231113, 'Glass');

-- Insert data into the Recycling table
INSERT INTO Recycling (Typeofwastecollected, Dateofcollection, AddressID, ClientID)
VALUES
  ('Paper', 20231111, 101, 10),
  ('Plastic', 20231112, 102, 11),
  ('Glass', 20231113, 103, 12);
