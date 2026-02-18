-- create a table using CASE amd COUNT statements -- 

WITH intermediate_table AS 
(SELECT platform, followers,
  CASE
    WHEN engagement_rate >= 8.0 THEN 'High engagement'
    WHEN engagement_rate < 8.0 THEN 'Low engagement'
  END as engagement_category
FROM marvel_avengers
)

SELECT platform, SUM(followers) as num_followers, engagement_category
FROM intermediate_table
GROUP BY platform, engagement_category



