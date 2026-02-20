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