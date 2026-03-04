-- Histogram of Tweets
/*
Assume you're given a table Twitter tweet data, write a query to obtain a histogram of
tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.
In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.
*/
-- find the number of tweets per user in 2022
WITH intermed AS
(select COUNT(tweet_id) as tweet_bucket, COUNT(user_id) AS users_num
from tweets
WHERE EXTRACT(YEAR FROM tweet_date) = 2022
GROUP BY user_id
ORDER BY tweet_bucket
)
-- calculate the num of users for each tweet frequency calculated before
SELECT tweet_bucket, count(users_num) as users_num
FROM intermed
GROUP BY tweet_bucket