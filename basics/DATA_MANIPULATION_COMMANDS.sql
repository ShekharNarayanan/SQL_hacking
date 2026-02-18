-- add new row to table --

-- manually enter data; specify columns and corresponding values --
/*
INSERT INTO customers (id, first_name, country, score) -- list of columns
VALUES 
	(6, 'Anna', 'USA', NULL), -- order of columns have to match the order of values
	(7, 'Sammy',NULL, 100)
*/

-- ommitting some value entries
/*
INSERT INTO customers (id, first_name) -- list of columns
VALUES 
	(8, 'Annie') -- order of columns have to match the order of values

*/

-- inserting to a table from another --
/*
INSERT INTO persons (id, person_name, birth_data, phone) -- table where data is to be injected --
SELECT -- columns of the second table that correspond to columns of the src table
	id,
	first_name,
	NULL,
	'Unknown' -- add UNKNOWN if the entries from certain column dont correspond between the tables
FROM customers -- table whose data is being injected into another table


-- check results
SELECT * from persons
*/

-- UPDATE existing table --
/*
UPDATE customers 
SET 
	country = 'USA'
WHERE id = 7
*/

-- UPDATE multple rows (replace score 0 by 50) --
/*
UPDATE customers
SET score = 50
WHERE score = 0

SELECT *
FROM customers
*/

-- DELETE rows --
/*
DELETE FROM customers
WHERE id > 5
*/

-- TRUNCATE deletes all data from a table MUCH faster than DELETE --
TRUNCATE TABLE persons
