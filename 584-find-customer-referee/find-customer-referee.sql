# Write your MySQL query statement below
SELECT name
FROM customer
WHERE (referee_id NOT LIKE '2' OR referee_id IS NULL) ; 
