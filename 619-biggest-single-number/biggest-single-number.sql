# Write your MySQL query statement below
SELECT MAX(num) as num
FROM (SELECT num
    FROM MyNumbers 
    GROUP BY 1 HAVING CASE WHEN COUNT(num) = 1 THEN num
                        ELSE null
                        END) 
AS a;