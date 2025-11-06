-- Select All data --
/* SELECT *
FROM orders
*/

-- Select specific columns --
/*
SELECT first_name,
		country,
		score
FROM customers
*/

-- filter data --
/*
SELECT first_name,
		country,
		score
FROM customers
WHERE country = 'Germany' and score >= 400
*/

-- sorting data with order by --
/*
SELECT *
FROM customers
ORDER BY score DESC
*/

--nested sorting--
/*
SELECT *
FROM customers
ORDER BY 
	country ASC, -- make country sorting ascending / alphabetical --
	score DESC -- make scores descending--
*/

-- GROUP BY (comes after where)--
-- whatever original columns you are importing in SELECT have to be used by group by
-- aggregated columns cannot be used in group by as they are only names assigned temporarily and not actually in the original table --
/*SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country
*/


-- HAVING operation: filter aggregated data (done after group by) --
/*
SELECT country,
	SUM(score) as total_scores
FROM customers
GROUP BY country
HAVING SUM(score) > 700


-- using WHERE and HAVING together--
SELECT country,
	SUM(score) as total_scores
FROM customers
WHERE score > 400 --filtering for scores before grouping by aggregate; if an ID had score less than 400 it will not be taken into account--
GROUP BY country
HAVING SUM(score) > 700 -- now filterin again after data is grouped by countries --

-- all the data so its easier to compare results--
SELECT *
FROM customers
*/

-- DISTINCT; remove duplicates from your data ; expensive operation--
/*
SELECT DISTINCT
country
FROM customers
*/

-- TOP ;restrict number of rows returned --
/*
SELECT TOP 3
*
FROM customers
ORDER BY score DESC
*/

-- select two most recent orderes --
/*
SELECT TOP 2 
	*
FROM orders
ORDER BY order_date
*/


-- make dummy value table--
/*
SELECT 123 AS st_val,	
	'Hello' as str_val

-- insert dummy values inside real tables --
SELECT 
id,
first_name,
'my_val' AS new_column
FROM customers
*/

