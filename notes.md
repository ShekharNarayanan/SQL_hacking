# SQL Course (30 Hr course):

## Resources:
1. Link: https://www.youtube.com/watch?v=SSKVgrwhzus

##  First Day (~ 1 hour mark)
### COMMANDS Summary: SELECT, FROM, WHERE, ORDER BY, GROUP BY

### Intro
1. We need sql to speed up data querying (excel etc breaks p fast  for big data)
2. all sorts of teams (analytics, engineer, web)
3. DBMS (data base management system) handles/ decides how to organiWze the queries made for different purposes
4. databases are stored on servers (always available)

### Database types
1. relational:rows and columns with related info, databases can be linked to each other using some sort of id/key

non relational:
2. key-value: pairs of keys and values (dict like)
3. column based: group data by columns
4. graph based: connection info between data points
5. document based: fit everything in one page (mongo db)

### Data structures/types
1. Primary keys are relevant (likely related to relationships between different databases)


##  SECOND Day (~ 2 hour mark)
### COMMANDS Summary: SELECT TOP, DISTINCT, HAVING, CREATE, ALTER, DROP COLUMN/ TABLE, INSERT INTO, VALUES
### Notes: If inserting data into specific columns of a table, make sure to specify the VALUES accordingly

### Order of queries: 
    1. SELECT DISTINCT TOP 2 (select data, make it distinct, pick the top 2 vals corresponding to..)
    2. SUM(col2) as sum_col2 (make an aggregate of columns 2)
    3. FROM Table
    4. WHERE Col = 10
    5. GROUP BY Col 1
    6. HAVING sum(col2) > 30
    7. ORDER BY col1 ASC

### Execution order
    1. FROM
    2. WHERE
    3. GROUP BY
    4. HAVING
	5. SELECT DISTINCT
    6. ORDER BY
    7. TOP

##  THIRD Day (~ 3 hour mark)
### COMMANDS Summary: UPDATE, DELETE, TRUNCATE, AND/OR/NOT, LIKE
### Notes: 