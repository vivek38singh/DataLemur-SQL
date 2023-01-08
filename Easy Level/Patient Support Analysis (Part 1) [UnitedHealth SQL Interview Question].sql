Question Link:- https://datalemur.com/questions/frequent-callers

-------------------------------------------------------
#Solution:-

WITH result AS (
  SELECT policy_holder_id, COUNT(*) AS member_count
  FROM callers
  GROUP BY policy_holder_id
)
  
SELECT COUNT(member_count)
FROM result
WHERE member_count>=3