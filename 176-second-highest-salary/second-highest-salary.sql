# Write your MySQL query statement below
SELECT 
    CASE WHEN COUNT(id) = 0 THEN NULL
    ELSE E.salary 
    END AS SecondHighestSalary
FROM 
(   SELECT id, salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS RANKING
    FROM Employee e ) AS E
WHERE RANKING = 2;
# The DENSE_RANK() function assigns the same rank to rows with identical values, but it does not skip the next rank for rows with the same ranking.