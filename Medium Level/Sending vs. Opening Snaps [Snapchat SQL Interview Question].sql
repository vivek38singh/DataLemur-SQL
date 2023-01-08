Question Link:- https://datalemur.com/questions/time-spent-snaps

----------------------------------------------------------------

#Solution:-

WITH result AS (
SELECT age.age_bucket,
SUM(CASE WHEN activity_type='send'THEN time_spent END)AS send_time,
SUM(CASE WHEN activity_type='open'THEN time_spent END)AS open_time
  
FROM activities JOIN age_breakdown AS age
ON activities.user_id = age.user_id
GROUP BY age.age_bucket
)

SELECT age_bucket,
ROUND(100*(send_time/(send_time+open_time)),2)AS send_perc,
ROUND(100*(open_time/(send_time+open_time)),2)AS open_perc
FROM result;