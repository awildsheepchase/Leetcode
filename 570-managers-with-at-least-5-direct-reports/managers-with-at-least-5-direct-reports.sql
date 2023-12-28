# Write your MySQL query statement below
SELECT name
FROM (  SELECT E.managerId AS id , A.name AS name
        FROM Employee E INNER JOIN Employee A ON E.managerId = A.id
        ) AS Temp
GROUP BY id HAVING COUNT(id)>=5;