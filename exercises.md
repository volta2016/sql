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
