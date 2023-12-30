# Write your MySQL query statement below
SELECT wa.id AS Id
FROM
weather wa INNER JOIN weather wb ON DATEDIFF(wa.recordDate, wb.recordDate) = 1
    AND wa.Temperature > wb.Temperature ;