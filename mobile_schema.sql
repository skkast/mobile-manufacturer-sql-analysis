-- ==================================================
-- Database: Cellphones Information
-- ==================================================

-- Drop existing tables if they exist (for clean creation)
DROP TABLE IF EXISTS Fact_Transactions;
DROP TABLE IF EXISTS Dim_Location;
DROP TABLE IF EXISTS Dim_Customer;
DROP TABLE IF EXISTS Dim_Model;
DROP TABLE IF EXISTS Dim_Manufacturer;

-- ==================================================
-- Table: Dim_Manufacturer
-- ==================================================
CREATE TABLE Dim_Manufacturer (
    manufacturer_id SERIAL PRIMARY KEY,
    manufacturer_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

-- ==================================================
-- Table: Dim_Model
-- ==================================================
CREATE TABLE Dim_Model (
    model_id SERIAL PRIMARY KEY,
    model_name VARCHAR(100) NOT NULL,
    manufacturer_id INT NOT NULL,
    release_year INT,
    price DECIMAL(10,2),
    FOREIGN KEY (manufacturer_id) REFERENCES Dim_Manufacturer(manufacturer_id)
);

-- ==================================================
-- Table: Dim_Location
-- ==================================================
CREATE TABLE Dim_Location (
    location_id SERIAL PRIMARY KEY,
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    country VARCHAR(50)
);

-- ==================================================
-- Table: Dim_Customer
-- ==================================================
CREATE TABLE Dim_Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES Dim_Location(location_id)
);

-- ==================================================
-- Table: Fact_Transactions
-- ==================================================
CREATE TABLE Fact_Transactions (
    transaction_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    model_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    quantity INT DEFAULT 1,
    sales_price DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Dim_Customer(customer_id),
    FOREIGN KEY (model_id) REFERENCES Dim_Model(model_id)
);