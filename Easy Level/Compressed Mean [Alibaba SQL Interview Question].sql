Question Link:- https://datalemur.com/questions/alibaba-compressed-mean

-------------------------------------------------------
#Solution:-

with result AS (
SELECT ROUND((1.0*SUM(item_count*order_occurrences))/SUM(order_occurrences),1) as mean
FROM items_per_order
)

SELECT *
from result;