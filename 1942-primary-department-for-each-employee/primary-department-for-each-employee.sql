# Write your MySQL query statement below
SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id HAVING COUNT(department_id) = 1
UNION
-- UNION will automatically removes duplicates
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y';