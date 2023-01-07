Question Link:- https://datalemur.com/questions/second-day-confirmation

-------------------------------------------------------
#Solution:-

SELECT DISTINCT(user_id)
FROM emails e
JOIN texts t
ON e.email_id = t.email_id
WHERE EXTRACT(day FROM(t.action_date-e.signup_date))=1 AND signup_action='Confirmed'