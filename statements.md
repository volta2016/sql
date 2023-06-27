# Statements

The code below is a SQL statement. A statement is text that the database recognizes as a valid command. Statements always end in a semicolon ;.

```sql
CREATE TABLE table_name (
   column_1 data_type,
   column_2 data_type,
   column_3 data_type
);
```

Let’s break down the components of a statement:

1. CREATE TABLE is a clause. Clauses perform specific tasks in SQL. By convention, clauses are written in capital letters. Clauses can also be referred to as commands.

2. table_name refers to the name of the table that the command is applied to.

3. (column_1 data_type, column_2 data_type, column_3 data_type) is a parameter. A parameter is a list of columns, data types, or values that are passed to a clause as an argument. Here, the parameter is a list of column names and the associated data type.

The structure of SQL statements vary. The number of lines used does not matter. A statement can be written all on one line, or split up across multiple lines if it makes it easier to read. In this course, you will become familiar with the structure of common statements.

## Create

CREATE statements allow us to create a new table in the database. You can use the CREATE statement anytime you want to create a new table from scratch. The statement below creates a new table named celebs.

```sql
CREATE TABLE celebs (
id INTEGER,
name TEXT,
age INTEGER
);
```

1. CREATE TABLE is a clause that tells SQL you want to create a new table.

2. celebs is the name of the table.

3. (id INTEGER, name TEXT, age INTEGER) is a list of parameters defining each column, or attribute in the table and its data type:

- id is the first column in the table. It stores values of data type INTEGER

- name is the second column in the table. It stores values of data type TEXT

- age is the third column in the table. It stores values of data type INTEGER

## Insert

The INSERT statement inserts a new row into a table.

We can use the INSERT statement when you want to add new records. The statement below enters a record for Justin Bieber into the celebs table.

```sql
INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 22);
```

- INSERT INTO is a clause that adds the specified row or rows.
- celebs is the table the row is added to.
- (id, name, age) is a parameter identifying the columns that data will be inserted into.

- VALUES is a clause that indicates the data being inserted.
- (1, 'Justin Bieber', 22) is a parameter identifying the values being inserted.

- 1: an integer that will be added to id column
- 'Justin Bieber': text that will be added to name column
- 22: an integer that will be added to age column

you must create the table first

```sql
INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 22);

INSERT INTO celebs (id, name, age)
VALUES (2, 'Beyonce Knowles', 33);

INSERT INTO celebs (id, name, age)
VALUES (3, 'Jeremy Lin', 26);

INSERT INTO celebs (id, name, age)
VALUES (4, 'Taylor Swift', 26);

SELECT * FROM celebs
```

Select
SELECT statements are used to fetch data from a database. In the statement below, SELECT returns all data in the name column of the celebs table.
