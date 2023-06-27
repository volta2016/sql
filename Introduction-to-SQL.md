# Introduction to SQL

SQL, Structured Query Language, is a programming language designed to manage data stored in relational databases. SQL operates through simple, declarative statements. This keeps data accurate and secure, and helps maintain the integrity of databases, regardless of size.

The SQL language is widely used today across web frameworks and database applications. Knowing SQL gives you the freedom to explore your data, and the power to make better decisions. By learning SQL, you will also learn concepts that apply to nearly every data storage system.

The statements covered in this course use SQLite Relational Database Management System (RDBMS). You can also access a glossary of all the SQL commands taught in this course.

```sql
 SELECT * FROM celebs
```

The line of code you provided is written in SQL, which is a programming language designed for managing relational databases. Let's break down the syntax and explain its functionality:

**SELECT:** This keyword is used to retrieve data from a database. It specifies that you want to retrieve specific columns or all columns from a table.

**(asterisk):** In SQL, the asterisk (\*) is a wildcard character that represents all columns. When used after the SELECT keyword, it indicates that you want to retrieve all columns from the table.
FROM: This keyword is used to specify the table from which you want to retrieve the data. In this case, the table name is "celebs."

In summary, the line of code **SELECT** FROM celebs" is a SQL query that retrieves all columns from the "celebs" table. It is requesting to retrieve all the data from every column available in the "celebs" table.

MANIPULATION

- Relational Databases
  Nice work! In one line of code, you returned information from a relational database.

SELECT \* FROM celebs;
We’ll take a look at what this code means soon, for now, let’s focus on what relational databases are and how they are organized.

A relational database is a database that organizes information into one or more tables. Here, the relational database contains one table.

A table is a collection of data organized into rows and columns. Tables are sometimes referred to as relations. Here the table is celebs.

A column is a set of data values of a particular type. Here, id, name, and age are the columns.

A row is a single record in a table. The first row in the celebs table has:

- An id of 1
- A name of Justin Bieber
- An age of 22

All data stored in a relational database is of a certain data type. Some of the most common data types are:

- INTEGER, a positive or negative whole number
- TEXT, a text string
- DATE, the date formatted as YYYY-MM-DD
- REAL, a decimal value

Query Results
id name age
1 Justin Bieber 22
2 Beyonce Knowles 33
3 Jeremy Lin 26
4 Taylor Swift 26

Database Schema
celebs
name type
id INTEGER
name TEXT
age INTEGER
Rows: 4
