Question Link:- https://datalemur.com/questions/sql-highest-grossing

----------------------------------------------------------------

#Solution:-

WITH result AS (
SELECT category,product,SUM(spend) AS total_spend,
RANK() OVER (PARTITION BY category ORDER BY SUM(spend) DESC) AS ranks
FROM product_spend 
WHERE EXTRACT(year from transaction_date)=2022
GROUP BY category,product
)

SELECT category, product, total_spend
FROM result 
WHERE ranks<=2 
ORDER BY category, ranks;