-- Insert data into the Client table
INSERT INTO Client (ClientID, ClientName, AddressID, City, ContactDetailsforClient)
VALUES
  (1, 'Company A', 101, 'City A', 1234567890),
  (2, 'Company B', 102, 'City B', 9876543210),
  (3, 'Company C', 103, 'City C', 5555555555);

-- Insert data into the Staff table
INSERT INTO Staff (StaffID, StaffName, ContactdetailsforStaff)
VALUES
  (101, 'John Doe', 1234567891),
  (102, 'Jane Smith', 9876543211),
  (103, 'Mike Johnson', 5555555556);

-- Insert data into the Waste_Management table
INSERT INTO Waste_Management (CollectionID, ClientID, AddressID, StaffID, Dateofcollection, Typeofwastecollected)
VALUES
  (1, 1, 101, 101, 20231111, 'Paper'),
  (2, 2, 102, 102, 20231112, 'Plastic'),
  (3, 3, 103, 103, 20231113, 'Glass');

-- Insert data into the Recycling table
INSERT INTO Recycling (Typeofwastecollected, Dateofcollection, AddressID, ClientID)
VALUES
  ('Paper', 20231111, 101, 1),
  ('Plastic', 20231112, 102, 2),
  ('Glass', 20231113, 103, 3);