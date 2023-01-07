Question Link:- https://datalemur.com/questions/laptop-mobile-viewership

-------------------------------------------------------
#Solution:-

SELECT 
SUM(CASE WHEN device_type ='laptop'
then 1
end) as laptop_views,
SUM(CASE WHEN device_type ='tablet' or device_type = 'phone'
then 1
end) as mobile_views
FROM viewership;