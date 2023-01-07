Question Link:- https://datalemur.com/questions/sql-avg-review-ratings

-------------------------------------------------------
#Solution:-

SELECT EXTRACT(month FROM submit_date) as mth,product_id,ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY 1,2
order by 1,2;