# Write your MySQL query statement below
SELECT user_id, CONCAT(UPPER(LEFT(name,1)),SUBSTR(LOWER(name),2)) AS name
FROM Users
ORDER BY user_id ;
# The SUBSTR() function extracts a substring from a string (starting at any position)
