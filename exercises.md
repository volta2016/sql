## retrieve all the columns of the table

```sql
SELECT * FROM movies;
```

## retrieve two columns

```sql
SELECT Title, Year FROM movies;
```

```sql
* is too much expensive
```

## Queries with constraints

SQL Lesson 2: Queries with constraints (Pt. 1)
Now we know how to select for specific columns of data from a table, but if you had a table with a hundred million rows of data, reading through all the rows would be inefficient and perhaps even impossible.

In order to filter certain results from being returned, we need to use a WHERE clause in the query. The clause is applied to each row of data by checking specific column values to determine whether it should be included in the results or not.

```sql
Select query with constraints
SELECT column, another_column, …
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR …;
```

More complex clauses can be constructed by joining numerous AND or OR logical keywords (ie. num_wheels >= 4 AND doors <= 2). And below are some useful operators that you can use for numerical data (ie. integer or floating point):

```sql
Operator	Condition	SQL Example
=, !=, < <=, >, >=	Standard numerical operators	col_name != 4
BETWEEN … AND …	Number is within range of two values (inclusive)	col_name BETWEEN 1.5 AND 10.5
NOT BETWEEN … AND …	Number is not within range of two values (inclusive)	col_name NOT BETWEEN 1 AND 10
IN (…)	Number exists in a list	col_name IN (2, 4, 6)
NOT IN (…)	Number does not exist in a list	col_name NOT IN (1, 3, 5)
```

In addition to making the results more manageable to understand, writing clauses to constrain the set of rows returned also allows the query to run faster due to the reduction in unnecessary data being returned.

## Did you know?

As you might have noticed by now, SQL doesn't require you to write the keywords all capitalized, but as a convention, it helps people distinguish SQL keywords from column and tables names, and makes the query easier to read.

```sql
Id	Title	Director	Year	Length_minutes
1	Toy Story	John Lasseter	1995	81
2	A Bug's Life	John Lasseter	1998	95
3	Toy Story 2	John Lasseter	1999	93
4	Monsters, Inc.	Pete Docter	2001	92
5	Finding Nemo	Andrew Stanton	2003	107
6	The Incredibles	Brad Bird	2004	116
7	Cars	John Lasseter	2006	117
8	Ratatouille	Brad Bird	2007	115
9	WALL-E	Andrew Stanton	2008	104
10	Up	Pete Docter	2009	101
11	Toy Story 3	Lee Unkrich	2010	103
12	Cars 2	John Lasseter	2011	120
13	Brave	Brenda Chapman	2012	102
14	Monsters University	Dan Scanlon	2013	110
```

## Exercises

- 1. Find the movie with a row id of 6

```sql
SELECT * FROM movies where id = 6;
results:
```

```sql
Id	Title	Director	Year	Length_minutes
6	The Incredibles	Brad Bird	2004	116
```

- 2. Find the movies released in the years between 2000 and 2010

```sql
SELECT * FROM movies where Year BETWEEN 2000 AND 2010;
```

- 3. Find the movies not released in the years between 2000 and 2010

```sql
SELECT * FROM movies where Year NOT BETWEEN 2000 AND 2010;
```

- 4. Find the first 5 Pixar movies and their release year

```sql
SELECT year FROM movies where Id  BETWEEN 1 AND 5;
```

SQL Lesson 3: Queries with constraints (Pt. 2)
When writing WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching. We show a few common text-data specific operators below:

```sql
Operator	Condition	Example
=	Case sensitive exact string comparison (notice the single equals)	col_name = "abc"
!= or <>	Case sensitive exact string inequality comparison	col_name != "abcd"
LIKE	Case insensitive exact string comparison	col_name LIKE "ABC"
NOT LIKE	Case insensitive exact string inequality comparison	col_name NOT LIKE "ABCD"
%	Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE)	col_name LIKE "%AT%"
(matches "AT", "ATTIC", "CAT" or even "BATS")
_	Used anywhere in a string to match a single character (only with LIKE or NOT LIKE)	col_name LIKE "AN_"
(matches "AND", but not "AN")
IN (…)	String exists in a list	col_name IN ("A", "B", "C")
NOT IN (…)	String does not exist in a list	col_name NOT IN ("D", "E", "F")
```

Exercise 3 — Tasks

1. Find all the Toy Story movies

```SQL
SELECT * FROM movies WHERE title LIKE "%Toy Story%";
```

2. Find all the movies directed by John Lasseter

```SQL
SELECT * FROM movies WHERE director = "John Lasseter";
```

or

```SQL
SELECT * FROM movies WHERE director lIKE = "john lasseter";
```

this operation is more expensive

% es danger find all the director that containing the letter **a**

The more specific the faster, the less specific the slower

```SQL
SELECT * FROM movies WHERE director lIKE = "%a%";
```

3. Find all the movies (and director) not directed by John Lasseter

```sql
SELECT * FROM movies WHERE director != "John Lasseter";
```

4. Find all the WALL-\* movies

```sql
SELECT * FROM movies WHERE title lIKE = "%WALL_%";
```

## match

9 WALL-E Andrew Stanton 2008 104
87 WALL-G Brenda Chapman 2042 97

## Filtering and sorting Query results

Even though the data in a database may be unique, the results of any particular query may not be – take our Movies table for example, many different movies can be released the same year. In such cases, SQL provides a convenient way to discard rows that have a duplicate column value by using the DISTINCT keyword.

```sql
Select query with unique results
SELECT DISTINCT column, another_column, …
FROM mytable
WHERE condition(s);
```

Since the DISTINCT(distincion) keyword will blindly remove duplicate rows, we will learn in a future lesson how to discard duplicates based on specific columns using grouping and the GROUP BY clause.

Ordering results

Unlike our neatly ordered table in the last few lessons, most data in real databases are added in no particular column order. As a result, it can be difficult to read through and understand the results of a query as the size of a table increases to thousands or even millions rows.

To help with this, SQL provides a way to sort your results by a given column in ascending or descending order using the ORDER BY clause.

```sql
Select query with ordered results
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC;
```

When an ORDER BY clause is specified, each row is sorted alpha-numerically based on the specified column's value. In some databases, you can also specify a collation to better sort data containing international text.

Limiting results to a subset
Another clause which is commonly used with the ORDER BY clause are the LIMIT and OFFSET clauses, which are a useful optimization to indicate to the database the subset of the results you care about.
The LIMIT will reduce the number of rows to return, and the optional OFFSET will specify where to begin counting the number rows from.

```sql
Select query with limited rows
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

If you think about websites like Reddit or Pinterest, the front page is a list of links sorted by popularity and time, and each subsequent page can be represented by sets of links at different offsets in the database. Using these clauses, the database can then execute queries faster and more efficiently by processing and returning only the requested content.

Did you know?
If you are curious about when the LIMIT and OFFSET are applied relative to the other parts of a query, they are generally done last after the other clauses have been applied. We'll touch more on this in Lesson 12: Order of execution after introducting a few more parts of the query.

ORDER BY -> Order alphabetically
DISTINCT -> I want the directo without duplicate

1. List all directors of Pixar movies (alphabetically), without duplicates ✓

```sql
SELECT DISTINCT director FROM movies ORDER BY director;
```

2. List the last four Pixar movies released (ordered from most recent to least)

```sql
SELECT * FROM movies ORDER BY year DESC LIMIT 4;
```

3. List the first five Pixar movies sorted alphabetically

```sql
SELECT * FROM movies ORDER BY title ASC LIMIT 5;
```

List the next five Pixar movies sorted alphabetically

```sql
SELECT * FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5;
```

## Simple SELECT Queries

You've done a good job getting to this point! Now that you've gotten a taste of how to write a basic query, you need to practice writing queries that solve actual problems.

```sql
SELECT query
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

Exercise

In the exercise below, you will be working with a different table. This table instead contains information about a few of the most populous cities of North America[1] including their population and geo-spatial location in the world.

## Did you know?

Positive latitudes correspond to the northern hemisphere, and positive longitudes correspond to the eastern hemisphere. Since North America is north of the equator and west of the prime meridian, all of the cities in the list have positive latitudes and negative longitudes.

Try and write some queries to find the information requested in the tasks you know. You may have to use a different combination of clauses in your query for each task. Once you're done, continue onto the next lesson to learn about queries that span multiple tables.

1. List all the Canadian cities and their populations

```sql
SELECT * FROM north_american_cities WHERE Country = "Canada";
```

2. Order all the cities in the United States by their latitude from north to south

```sql
SELECT * FROM north_american_cities
WHERE longitude < 87.68
ORDER BY longitude ASC;
```

3. List all the cities west of Chicago, ordered from west to east

```sql
SELECT * FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;
```

4. List the two largest cities in Mexico (by population)

```sql
SELECT * FROM north_american_cities
WHERE country = "Mexico"
ORDER BY population DESC
LIMIT 2;
```

5 List the third and fourth largest cities (by population) in the United States and their population

```sql
SELECT * FROM north_american_cities
WHERE country = "United States"
ORDER BY population DESC
LIMIT 2
OFFSET 2;
```

## Multi-table queries with JOINs

When we realize the relation between two tables, we want to retrieve data from a table and be able to take it to another

We want to make the realtion, we have the user table and the tweets table, we want to bring us the information to be able to make an introinspetion of the data and to be able to make a match, than to have the data of all these tables and not to have them separated.
There are different types of joins:

**INNER JOIN:** This type of join returns only records that have matches in both tables based on the specified condition. Records that do not meet the condition will not be included in the result.

**LEFT JOIN (LEFT OUTER JOIN):** A left join returns all records from the left table (the first mentioned table) and matching records from the right table (the second mentioned table). If there are no matches in the right table, the values will be null.

**RIGHT JOIN (RIGHT OUTER JOIN):** Similar to the left join, but returns all records in the right table and the matching records in the left table. If there are no matches in the left table, the values will be null.

**FULL JOIN (FULL OUTER JOIN):** A full join returns all records from both tables, with matches where they exist and null values where there are no matches.

SELF JOIN: This type of join is used when you want to combine a table with itself. Aliases are used to distinguish the two instances of the same table.

**CROSS JOIN (CARTESIAN JOIN):** A cross join combines all the rows of a table with all the rows of another table, generating a Cartesian product. It is important to be careful when using cross joins, as they can generate a large number of results.