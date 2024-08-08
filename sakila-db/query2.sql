USE SAKILA;

-- Create the table with columns and data types
CREATE TABLE KOI (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Optionally insert some data into the KOI table
INSERT INTO KOI (name) VALUES ('Sample Name');

-- Query data from the ADDRESS table
SELECT CITY_ID, PHONE, DISTRICT, LOCATION FROM ADDRESS;

-- Query all data from the KOI table
SELECT * FROM KOI;

-- Alter the KOI table: Drop column (assuming DISTRICT exists)
-- This step should only be performed if DISTRICT was previously added
-- Since DISTRICT does not exist, this step can be skipped or must be adjusted
-- ALTER TABLE KOI
-- DROP COLUMN DISTRICT;

-- Correct way to add a new column
ALTER TABLE KOI
ADD COLUMN NEW_DISTRICT VARCHAR(20);

-- Verify the new structure of the KOI table
DESCRIBE KOI;

-- Query all data from the KOI table (to see the added column, if needed)
SELECT * FROM KOI;
