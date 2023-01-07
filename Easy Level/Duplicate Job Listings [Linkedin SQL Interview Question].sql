Question Link:- https://datalemur.com/questions/duplicate-job-listings

-------------------------------------------------------
#Solution:-

WITH result AS (
  SELECT COUNT(*) 
  FROM job_listings 
  GROUP BY (title, description, company_id) 
  having COUNT(*)>1
) 

SELECT count(*) FROM result