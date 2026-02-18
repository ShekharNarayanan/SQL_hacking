-- basically explores logical and comparison operations for data manipulation --

-- ALL OPERATIONS WITH WHERE --

-- using logical and comparison operators--
/*
SELECT *
FROM customers
WHERE  country != 'USA' AND NOT score >= 500
*/

-- using range BETWEEN (values are inclusive) using logical and compariative operators are better--
SELECT *
FROM customers
--WHERE score BETWEEN 100 AND 500 -- this or the line below--
WHERE score >= 100 AND score <=500

-- MEMBERSHIP operator --
SELECT *
FROM customers
WHERE country NOT IN ('Germany', 'USA')


-- LIKE operator --
-- search for pattern in text --

-- using %: it can start or end with specific characters --
-- for example: M% means all entries of text that start with M and anything after that is fine--
-- %in means it should end with in and anything else before is fine
-- %r% there has to be an r in the middle SOMEWHERE just not at the start or the end

-- name starts with M--
/*
SELECT * 
FROM customers
WHERE first_name LIKE 'M%'

--name ends with n--
SELECT * 
FROM customers
WHERE first_name LIKE '%n'

-- name contains r --
SELECT * 
FROM customers
WHERE first_name LIKE '%r%'
*/

-- using _ : look for things in the exact place --
-- example: _ _ b % (so the third letter must be b and anything else is fine after that--

--first name contains r at the third place--
/*
SELECT * 
FROM customers
WHERE first_name LIKE '__r%'
*/