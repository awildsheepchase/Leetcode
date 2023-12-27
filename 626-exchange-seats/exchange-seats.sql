# Write your MySQL query statement below
SELECT 
    ROW_NUMBER() OVER (ORDER BY id) AS id,
    student
FROM 
(SELECT 
        CASE WHEN MOD(id,2) = 0 THEN id-1
        WHEN MOD(id,2) = 1 THEN id+1
        END AS id, student
FROM Seat
ORDER BY id ) AS A
