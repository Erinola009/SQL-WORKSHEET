-- My Objective here is to implement SQL DML Queries to Manage Record Winthin the Database Table Defined in the Relational Schema
FirstName_LastName: Erinola Elebute
Data Science
GOMYCODE


CREATE DATABASE Fleet_Management
-- making use of database created
USE Fleet_Management

-- creating a table called "Vechicles"
CREATE TABLE Vechicles(
        LicensePlate VARCHAR(100) PRIMARY KEY,
		Make VARCHAR(50),
		Model VARCHAR(100),
		Year INT,
		Color VARCHAR(50),
		VIN VARCHAR(100),
);

-- creating a table called "Drivers"
CREATE TABLE Drivers(
		First_Name VARCHAR(100),
        Last_Name VARCHAR(100),
		LicenseNumber VARCHAR(100),
		Phone VARCHAR(15),
		Address VARCHAR(100),
		City VARCHAR(50),
		State VARCHAR(50),
	    ZipCode VARCHAR(10),
);

-- creating a table called "Trips"
CREATE TABLE Trips(
		VehicleID INT PRIMARY KEY,
		DriverID INT(100),
		Start_Date DATE,
		End_Date DATE,
		Start_location VARCHAR(150),
		End_location VARCHAR(150),
);

ALTER TABLE Trips
ADD Distance INT;

SELECT * FROM Vechicles, Drivers, Trips, Maintanance

-- creating a table called "maintainance"
CREATE TABLE Maintanance(
		VehicleID INT PRIMARY KEY,
		MaintenanceDate DATE,
		Description VARCHAR(100),
		Cost DECIMAL(10, 2),
);
		

-- Now inserting data into the Records table

-- inserting data into the Vehicles table
INSERT INTO Vechicles
VALUES ('ABC123', 'Toyota', 'Corolla', 2020, 'White', '1HGCM82633A004352'),
('XYZ789', 'Ford', 'Fusion', 2018, 'Blue', '2HGCM82633A004353');

-- insserting data into the Drivers
INSERT INTO Drivers (First_Name, Last_Name, LicenseNumber, Phone, Address, City, State, ZipCode)
VALUES ('Michael', 'Smith', 'D1234567', '1234567890', '123 Main St', 'Anytown', 'CA', '12345'),
('Sarah', 'Connor', 'D7654321', '0987654321', '456 Elm St', 'Otherville', 'NY', '54321');

SELECT * FROM Drivers

-- insserting data into the Trips
INSERT INTO Trips (VehicleID, DriverID, Start_Date, End_Date, Start_location, End_location, Distance)
VALUES (1, 1, '2024-07-01', '2024-07-02', 'Los Angeles', 'San Francisco', 380),
(2, 2, '2024-07-03', '2024-07-04', 'New York', 'Washington D.C.', 225);


-- insserting data into the Maintanance 
INSERT INTO Maintanance (VehicleID, MaintenanceDate, Description, Cost)
VALUES (1, '2024-06-15', 'Oil change', 50.00),
(2, '2024-06-20', 'Tire replacement', 300.00);
-- Now updating the cost of the second Maintanance record
UPDATE Maintanance 
SET Cost = 350.00 
WHERE VehicleID = 2 AND MaintenanceDate = '2024-06-20';

-- Now Deleting the first Vechicles from the Vechicles Table
DELETE FROM Vechicles 
WHERE LicensePlate = 'ABC123';

-- Now inserting a new record into the Trips table

INSERT INTO Trips (VehicleID, DriverID, Start_Date, End_Date, Start_location, End_location, Distance)
VALUES (3, 1, '2024-07-05', '2024-07-06', 'Boston', 'Philadelphia', 300);
--Given that Vehicle_id was declared as PRIMARY KEY, we can have Duplicated Values so i change "2" to "3"

-- Now updating the color of the second Vechicles in the Vechicles table to "Red"
UPDATE Vechicles 
SET Color = 'Red' 
WHERE LicensePlate = 'XYZ789';

-- Inserting the new Maintenance record into the Maintenance table

INSERT INTO Maintanance (VehicleID, MaintenanceDate, Description, Cost)
VALUES (3, '2024-07-10', 'Brake inspection', 100.00);
-- we can have Duplicated Values so i change "1" to "3"

-- Update the phone number of the first Driver in the DriversTable
UPDATE Drivers 
SET Phone = '2223334444' 
WHERE LicenseNumber = 'D1234567';

-- Deleting the Trip with TripID - 2 from the Trips Table
DELETE FROM Trips 
WHERE VehicleID = 2 AND DriverID = 2 AND Start_Date = '2024-07-03';

SELECT * FROM Vechicles, Drivers, Trips, Maintanance

SELECT * FROM Vechicles;

