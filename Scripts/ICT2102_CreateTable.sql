-- Create table for Customers
Create Table Customers
(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
loginID VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
email VARCHAR(255),
preferredFloorArea VARCHAR(50),
preferredLocation VARCHAR(255),
preferredRegion VARCHAR(50),
income FLOAT
)

-- Create table for Admins
Create Table Admins
(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
adminID VARCHAR(255) NOT NULL,
name VARCHAR(255),
password VARCHAR(255)
)

-- Create table for Property
Create Table Property
(
id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
town VARCHAR(255),
region VARCHAR(255),
street VARCHAR(255),
block INT,
floorArea VARCHAR(255),
storeyRange VARCHAR(255),
leaseYear INT,
model VARCHAR(50),
flatType VARCHAR(50)
)

-- Create table for Property_BTO
Create Table Property_BTO
(
bto_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
minPrice FLOAT,
maxPrice FLOAT,
property_id INT NOT NULL FOREIGN KEY REFERENCES Property(id)
)

-- Create table for Property_Resales
Create Table Property_Resales
(
resales_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
resalesPrice FLOAT,
property_id INT NOT NULL FOREIGN KEY REFERENCES Property(id)
)

-- Create table for Manage
Create Table Manage
(
admin_ID INT NOT NULL FOREIGN KEY REFERENCES Admins(id),
p_id INT NOT NULL FOREIGN KEY REFERENCES Property(id),
date DATE NOT NULL PRIMARY KEY,
actions VARCHAR(255)
)
