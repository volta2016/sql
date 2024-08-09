-- truncate a table
Comment indicating that the next command will be used to truncate a table.

-- TRUNCATE TABLE <NAME OF TABLE>
Comment showing the general syntax for the TRUNCATE TABLE command. You should replace <NAME OF TABLE> with the name of the table you want to truncate.

## USE SAKILA;

Changes the active database to SAKILA. All subsequent operations will be performed on this database.

## CREATE TABLE KOI ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100) NOT NULL );

Creates a new table named KOI with two columns:

id: of type INT, set to auto-increment, and is the primary key.
name: of type VARCHAR with a maximum length of 100 characters and cannot be null.
-- Query data from the ADDRESS table
Comment indicating that the next query is to retrieve data from the ADDRESS table.

## SELECT CITY_ID, PHONE, DISTRICT, LOCATION FROM ADDRESS;

Query that selects and displays the columns CITY_ID, PHONE, DISTRICT, and LOCATION from the ADDRESS table.

## SELECT \* FROM KOI;

Query that selects and displays all data from the KOI table. At this point, the table is empty because it was just created.

## TRUNCATE TABLE KOI;

The TRUNCATE TABLE command removes all records from the KOI table quickly and efficiently but retains the table structure. It’s like clearing all the contents of the table without deleting it. TRUNCATE TABLE cannot be used if there are foreign key constraints referring to the table.

## SELECT \* FROM KOI;

Query that selects and displays all data from the KOI table. After using TRUNCATE TABLE, the KOI table should be empty, so the result will be an empty table.
