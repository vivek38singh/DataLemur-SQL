Question Link:- https://datalemur.com/questions/sql-page-with-no-likes

-------------------------------------------------------
#Solution:-


SELECT pg.page_id FROM pages as pg
LEFT JOIN page_likes as pl
on pg.page_id=pl.page_id
where pl.page_id is NULL;