-- Insert data into the Client table
INSERT INTO Client (ClientID, ClientName, AddressID, City, ContactDetailsforClient)
VALUES
  (10, 'Company A', 101, 'Madaraka', 0734567890),
  (11, 'Company B', 102, 'South  B', 0776543210),
  (12, 'Company C', 103, 'Nairobi We', 0755555555);

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
  ('Paper', 20231111, 101, 1),
  ('Plastic', 20231112, 102, 2),
  ('Glass', 20231113, 103, 3);
