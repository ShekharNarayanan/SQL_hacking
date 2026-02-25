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

# 7. SQL JOINS

-   **INNER JOIN** → Returns only rows where there is a match in both
    tables (intersection of two tables).
-   **LEFT JOIN (LEFT OUTER JOIN)** → Returns all rows from the left
    table, and matching rows from the right table. Non-matches on the
    right become `NULL`.
-   **RIGHT JOIN (RIGHT OUTER JOIN)** → Returns all rows from the right
    table, and matching rows from the left table. Non-matches on the
    left become `NULL`.
-   **FULL OUTER JOIN** → Returns all rows from both tables.
    Non-matching rows from either side contain `NULL` values.
-   Join behavior depends on **where filtering conditions are placed**
    (`ON` vs `WHERE`), especially with outer joins.

------------------------------------------------------------------------

## Basic JOIN Syntax

``` sql
SELECT *
FROM trades
JOIN users
  ON trades.user_id = users.user_id;
```

------------------------------------------------------------------------

## Aggregation After JOIN (Example Pattern)

``` sql
SELECT users.city,
       COUNT(trades.order_id) AS total_orders
FROM trades
INNER JOIN users
  ON trades.user_id = users.user_id
  AND trades.status = 'Completed'
GROUP BY users.city
ORDER BY total_orders DESC
LIMIT 3;
```

------------------------------------------------------------------------

## LEFT JOIN to Find Missing Matches

``` sql
SELECT pages.page_id
FROM pages
LEFT JOIN page_likes
  ON pages.page_id = page_likes.page_id
WHERE page_likes.liked_date IS NULL
ORDER BY page_id;
```




