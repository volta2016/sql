## Constraints

Constraints that add information about how a column can be used are invoked after specifying the data type for a column. They can be used to tell the database to reject inserted data that does not adhere to a certain restriction. The statement below sets constraints on the celebs table.

```sql
CREATE TABLE celebs (
   id INTEGER PRIMARY KEY,
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   date_of_death TEXT DEFAULT 'Not Applicable'
);

```

1. PRIMARY KEY columns can be used to uniquely identify the row. Attempts to insert a row with an identical value to a row already in the table will result in a constraint violation which will not allow you to insert the new row.

2. UNIQUE columns have a different value for every row. This is similar to PRIMARY KEY except a table can have many different UNIQUE columns.

3. NOT NULL columns must have a value. Attempts to insert a row without a value for a NOT NULL column will result in a constraint violation and the new row will not be inserted.

4. DEFAULT columns take an additional argument that will be the assumed value for an inserted row if the new row does not specify a value for that column.

In SQL, both the primary key and unique constraints are used to enforce uniqueness in a table, but they have some differences in their behavior and purpose.

Primary Key:

A primary key is a column or a set of columns that uniquely identifies each row in a table.
It must contain unique values, and it cannot have null values.
Each table can have only one primary key.
When a primary key is defined, a corresponding index is automatically created to optimize data retrieval and enforce uniqueness.
In the example you provided, the "id" column is defined as the primary key.
Unique Constraint:

A unique constraint ensures that the values in a column or a set of columns are unique within the table.
Unlike a primary key, a unique constraint can allow null values.
Multiple unique constraints can be defined in a table, and each unique constraint can be applied to one or more columns.
The unique constraint guarantees that no two rows in the table will have the same values in the specified column(s).
In the example you provided, the "name" column is defined as unique, meaning that each name must be unique within the "celebs" table.
In summary, the primary key uniquely identifies each row in a table and cannot have null values, while a unique constraint ensures uniqueness but allows null values. Additionally, a table can have only one primary key, but it can have multiple unique constraints.
