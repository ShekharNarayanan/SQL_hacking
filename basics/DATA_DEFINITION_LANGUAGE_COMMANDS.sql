-- create new table --
/*
CREATE TABLE persons (
	id INT NOT NULL, -- column name and criteria --
	person_name VARCHAR(50) NOT NULL,
	birth_data DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT primary_key_persons PRIMARY KEY (id)
	)
*/
-- alter created table / add column--
/*
ALTER TABLE persons 
ADD email VARCHAR(50) NOT NULL
*/

-- remove column --
/*
ALTER TABLE persons
DROP COLUMN phone
*/

-- drop something from the database (removing table from database) --
-- DROP TABLE  persons --

