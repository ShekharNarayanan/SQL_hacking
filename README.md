# SQL Practice Notes

## 0. Why SQL?

-   Used to query large datasets efficiently (Excel breaks at scale)
-   Used across teams: analytics, engineering, product, web
-   Works with databases managed by a **DBMS (Database Management
    System)**
-   Databases live on servers (persistent + accessible)

------------------------------------------------------------------------

# 1. Database Fundamentals

## 1.1 What is a DBMS?

A system that: - Stores data - Organizes data - Executes queries
efficiently - Manages permissions & performance

------------------------------------------------------------------------

## 1.2 Database Types

### Relational (Most common in SQL)

-   Structured as rows and columns
-   Tables linked via **Primary Keys** and **Foreign Keys**
-   Example systems: PostgreSQL, MySQL, SQL Server

### Non-Relational (NoSQL)

1.  **Key-Value** -- dictionary-like structure\
2.  **Column-based** -- data grouped by columns\
3.  **Graph-based** -- focuses on relationships between entities\
4.  **Document-based** -- stores flexible JSON-like documents (e.g.,
    MongoDB)

------------------------------------------------------------------------

# 2. Core SQL Commands (Level 1)

## Basic Query Structure

``` sql
SELECT column1, column2
FROM table_name
WHERE condition
GROUP BY column
HAVING condition
ORDER BY column ASC;
```

### Command Summary

-   `SELECT` -- choose columns
-   `FROM` -- specify table
-   `WHERE` -- filter rows
-   `GROUP BY` -- aggregate rows
-   `HAVING` -- filter aggregated results
-   `ORDER BY` -- sort results

------------------------------------------------------------------------

## Execution Order (Important)

1.  `FROM`
2.  `WHERE`
3.  `GROUP BY`
4.  `HAVING`
5.  `SELECT`
6.  `DISTINCT`
7.  `ORDER BY`
8.  `TOP / LIMIT`

   
Note: Columns made using alternate methods like `SELECT SUM(COL) as COL1` are not recognized by `GROUP BY`.
------------------------------------------------------------------------

# 3. Additional Commands (Level 2)

-   `SELECT DISTINCT`
-   `TOP` / `LIMIT`
-   `INSERT INTO`
-   `VALUES`
-   `CREATE TABLE`
-   `ALTER TABLE`
-   `DROP TABLE`
-   `UPDATE`
-   `DELETE`
-   `TRUNCATE`
-   Logical operators: `AND`, `OR`, `NOT`
-   Pattern matching: `LIKE`

Note: When inserting into specific columns, ensure VALUES match the
selected columns.

------------------------------------------------------------------------

# 4. NULL Handling & Conditional Logic (Level 3)

## NULL Handling

-   `IFNULL(value, replacement)` -- replaces NULL (2 arguments only)
-   `COALESCE(val1, val2, val3, ...)` -- returns first non-null value

## Returning Floats

Multiply by `1.0` to force float division if needed.

------------------------------------------------------------------------

## CASE Statement

Used for conditional logic inside queries.

``` sql
CASE
    WHEN condition THEN result
    ELSE result
END
```

-   Used to classify data
-   Often used inside `SELECT`
-   Can be used inside aggregates (conditional aggregation)

------------------------------------------------------------------------

# 5. Aggregation Concepts

Common aggregate functions:

-   `COUNT()`
-   `SUM()`
-   `AVG()`
-   `MIN()`
-   `MAX()`

### Conditional Aggregation Pattern

``` sql
SUM(CASE WHEN condition THEN column ELSE 0 END)
```

Used to segment metrics in a single query.

------------------------------------------------------------------------

# 6. Intermediate Query Structures

## Common Table Expression (CTE)

Used to create intermediate result sets.

``` sql
WITH intermediate_table AS (
    SELECT ...
    FROM ...
)
SELECT *
FROM intermediate_table;
```

-   Improves readability
-   Breaks complex problems into steps
-   Exists only for that query

------------------------------------------------------------------------

# 7. Key Concepts to Master

-   Difference between WHERE and CASE
-   Logical vs execution order
-   Grouping vs filtering
-   Conditional aggregation
-   Data reshaping (wide vs long format)
-   Clean query structure

------------------------------------------------------------------------

# Progress Tracking 
## Personal notes:
1. Order of execution matters more than I thought -> need to focus more on it before writing a query.
2. Identifying which commands can be used in the query is half of the answer for questions.

## Areas of confusion
1. Learning how a non-sequential language works


