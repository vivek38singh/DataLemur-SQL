Question Link:- https://datalemur.com/questions/matching-skills

----------------------------------------------------------------

SELECT candidate_id FROM candidates
where skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
having COUNT(skill)=3
ORDER BY candidate_id;