Question Link:- https://datalemur.com/questions/non-profitable-drugs

-------------------------------------------------------
#Solution:-

WITH result AS (
  SELECT manufacturer,drug, (total_sales-cogs) AS profit
  FROM pharmacy_sales
  WHERE (total_sales-cogs)<0
)
SELECT manufacturer,COUNT(drug) AS drug_count,ABS(SUM(profit)) AS total_loss
FROM result
GROUP BY manufacturer
ORDER BY total_loss DESC;