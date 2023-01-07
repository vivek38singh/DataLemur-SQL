Question Link:- https://datalemur.com/questions/click-through-rate

-------------------------------------------------------
#Solution:-

SELECT app_id ,
ROUND(100.0 * SUM(CASE WHEN event_type='click' THEN 1 END)/
SUM(CASE WHEN event_type='impression' THEN 1 END),2)
FROM events 
WHERE EXTRACT(year from timestamp)=2022
GROUP BY 1;