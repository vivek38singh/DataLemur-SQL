Question Link:- https://datalemur.com/questions/total-drugs-sales

-------------------------------------------------------
#Solution:-

WITH result AS(
SELECT manufacturer,ROUND(SUM(total_sales)*1.0/1000000) as sales_total
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY sales_total DESC
)

SELECT manufacturer,CONCAT('$',sales_total,' ','million') AS sales 
FROM result