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

## Select

SELECT statements are used to fetch data from a database. In the statement below, SELECT returns all data in the name column of the celebs table.

```sql
SELECT name FROM celebs;
```

1. SELECT is a clause that indicates that the statement is a query. You will use SELECT every time you query data from a database.

2. name specifies the column to query data from.

3. FROM celebs specifies the name of the table to query data from. In this statement, data is queried from the celebs table.

You can also query data from all columns in a table with SELECT.

```sql
SELECT * FROM celebs;
```

- is a special wildcard character that we have been using. It allows you to select every column in a table without having to name each one individually. Here, the result set contains every column in the celebs table.

SELECT statements always return a new table called the result set.

## Alter

The ALTER TABLE statement adds a new column to a table. You can use this command when you want to add columns to a table. The statement below adds a new column twitter_handle to the celebs table.

```sql
ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;
```

1. ALTER TABLE is a clause that lets you make the specified changes.

2. celebs is the name of the table that is being changed.

3. ADD COLUMN is a clause that lets you add a new column to a table:

twitter_handle is the name of the new column being added
TEXT is the data type for the new column

4. NULL is a special value in SQL that represents missing or unknown data. Here, the rows that existed before the column was added have NULL (∅) values for twitter_handle.

## Update

The UPDATE statement edits a row in a table. You can use the UPDATE statement when you want to change existing records. The statement below updates the record with an id value of 4 to have the twitter_handle @taylorswift13.

```sql
UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;
```

1. UPDATE is a clause that edits a row in the table.
2. celebs is the name of the table.
3. SET is a clause that indicates the column to edit.

- twitter_handle is the name of the column that is going to be updated

- @taylorswift13 is the new value that is going to be inserted into the twitter_handle column.

4. WHERE is a clause that indicates which row(s) to update with the new column value. Here the row with a 4 in the id column is the row that will have the twitter_handle updated to @taylorswift13.

IMPORTANT

they are called relational data in SQL to avoid duplicity of data.

```sql
UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;

SELECT * FROM celebs;
```

## Delete

The DELETE FROM statement deletes one or more rows from a table. You can use the statement when you want to delete existing records. The statement below deletes all records in the celebs table with no twitter_handle:

```sql
DELETE FROM celebs
WHERE twitter_handle IS NULL;
```

1. DELETE FROM is a clause that lets you delete rows from a table.

2. celebs is the name of the table we want to delete rows from.

3. WHERE is a clause that lets you select which rows you want to delete. Here we want to delete all of the rows where the twitter_handle column IS NULL.

4. IS NULL is a condition in SQL that returns true when the value is NULL and false otherwise.
