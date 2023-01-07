Question Link:- https://datalemur.com/questions/sql-average-post-hiatus-1

-------------------------------------------------------
#Solution:-

select user_id, DATE_PART('day',MAX(post_date)-MIN(post_date)) as days_between
from posts
where EXTRACT(year from post_date)=2021
GROUP BY 1
HAVING count(post_id)>1;