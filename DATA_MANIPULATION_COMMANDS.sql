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

-- select data from src table--
INSERT INTO persons (id, person_name, birth_data, phone)
SELECT 
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers


-- check results
SELECT * from persons
