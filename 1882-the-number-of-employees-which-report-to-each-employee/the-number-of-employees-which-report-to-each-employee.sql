# Write your MySQL query statement below
SELECT E.employee_id, E.name, 
        COUNT(T.name) AS reports_count, 
        ROUND(AVG(T.age)) AS average_age
FROM Employees E
INNER JOIN Employees T ON  E.employee_id = T.reports_to
GROUP BY E.employee_id 
ORDER BY 1;