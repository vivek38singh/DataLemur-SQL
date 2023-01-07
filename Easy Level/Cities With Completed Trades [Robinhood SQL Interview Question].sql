Question Link:- https://datalemur.com/questions/completed-trades

-------------------------------------------------------
#Solution:-

SELECT users.city,COUNT(trades.order_id)as total_orders FROM trades
JOIN users
on trades.user_id=users.user_id
WHERE trades.status='Completed' 
group by 1
ORDER BY total_orders DESC
LIMIT 3;