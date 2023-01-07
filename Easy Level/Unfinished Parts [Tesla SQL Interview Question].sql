Question Link:- https://datalemur.com/questions/tesla-unfinished-parts

-------------------------------------------------------
#Solution:-

SELECT part FROM parts_assembly
where finish_date is NULL
group by part;