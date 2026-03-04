-- DATE TIME EXTRACTION FUNCTIONS

SELECT user_id, 
      EXTRACT(DAY FROM (MAX(post_date) - MIN(post_date))) as days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(user_id) >= 2