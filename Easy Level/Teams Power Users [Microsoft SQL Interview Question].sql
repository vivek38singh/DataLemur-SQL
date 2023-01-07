Question Link:- https://datalemur.com/questions/teams-power-users

-------------------------------------------------------
#Solution:-

SELECT sender_id, COUNT(*) as message_count
FROM messages
WHERE EXTRACT(YEAR FROM sent_date)=2022 AND EXTRACT(MONTH FROM sent_date)=08
GROUP BY 1
ORDER BY message_count DESC
LIMIT 2