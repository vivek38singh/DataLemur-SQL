Question Link:- https://datalemur.com/questions/cards-issued-difference

-------------------------------------------------------
#Solution:-

with result AS(
SELECT card_name,MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
)

select * from result
ORDER BY difference DESC;