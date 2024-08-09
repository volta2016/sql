-- truncate a table
-- TRUNCATE TABLE <NAME OF TABLE>

USE SAKILA;

CREATE TABLE KOI (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Query data from the ADDRESS table
SELECT CITY_ID, PHONE, DISTRICT, LOCATION FROM ADDRESS;

SELECT * FROM KOI;
TRUNCATE TABLE KOI;

SELECT * FROM KOI;