# Write your MySQL query statement below
DELETE 
FROM Person N
WHERE id NOT IN (SELECT *
FROM (SELECT MIN(n.id) 
        FROM Person n
        GROUP BY n.email) m);