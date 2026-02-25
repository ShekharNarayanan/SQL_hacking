-- basic syntax for a JOIN -- 
SELECT * 
FROM trades
JOIN users
  ON trades.user_id = users.user_id
  
-- use aggregation and sorting within an inner join problem -- 
-- problem statement: Write a query to retrieve the top three cities that have --
-- the highest number of completed trade orders listed in descending order. --
-- Output the city name and the corresponding number of completed trade orders. --
WITH intermediate_table AS 
(SELECT users.city,
       trades.order_id, 
       trades.status
FROM trades
JOIN users
  ON trades.user_id = users.user_id)

SELECT city, COUNT(order_id) as total_orders
FROM intermediate_table 
WHERE status = 'Completed'
GROUP BY city
ORDER BY total_orders DESC LIMIT 3;

-- use conditionals for the same issue -- 
SELECT users.city,
       COUNT(trades.order_id) as total_orders
FROM trades
INNER JOIN users
  ON trades.user_id = users.user_id
  AND trades.status = 'Completed'
GROUP BY users.city
ORDER BY total_orders DESC LIMIT 3

-- problem statement: Assume you're given two tables containing data about 
-- Facebook Pages and their respective likes (as in "Like a Facebook Page").
-- Write a query to return the IDs of the Facebook pages that have zero likes. 
--The output should be sorted in ascending order based on the page IDs.
SELECT pages.page_id
FROM pages 
LEFT JOIN page_likes 
  ON pages.page_id = page_likes.page_id 
WHERE page_likes.liked_date IS NULL -- I tried the same code with AND page_likes.liked_date IS NULL and that didnt work (there are no NULL values in page_likes)
ORDER BY page_id

