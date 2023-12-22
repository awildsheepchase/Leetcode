# Write your MySQL query statement below
SELECT Employee.name,Bonus.Bonus
FROM Employee 
LEFT JOIN Bonus ON employee.empId = bonus.empId
WHERE bonus < 1000 OR bonus IS NULL;
# LEFT OUTER JOIN contain NULL values, so need to specifically write bonus IS NULL.
