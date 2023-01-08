Question Link:- https://datalemur.com/questions/uncategorized-calls-percentage

-------------------------------------------------------
#Solution:-

WITH result AS(
SELECT 
COUNT(CASE WHEN call_category is NULL or call_category='n/a' then 1 end) as uncategorised_calls,
COUNT(*) as total
FROM callers
)
SELECT ROUND(uncategorised_calls*100.0/total,1) AS call_percentage 
FROM result;