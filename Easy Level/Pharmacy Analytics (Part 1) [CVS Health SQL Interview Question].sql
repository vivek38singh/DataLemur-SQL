Question Link:- https://datalemur.com/questions/top-profitable-drugs

-------------------------------------------------------
#Solution:-

WITH result AS(
SELECT drug,total_sales-cogs as total_profit
FROM pharmacy_sales
)

SELECT * FROM result
ORDER BY total_profit DESC
LIMIT 3;