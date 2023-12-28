# Write your MySQL query statement below

SELECT id AS user_id ,
        ROUND(SUM(co)/COUNT(id),2) AS confirmation_rate
FROM(
SELECT S.user_id AS id, C.action AS act,
        CASE WHEN action = 'confirmed' THEN 1
        ELSE 0 END AS co
FROM Signups S LEFT JOIN Confirmations C ON S.user_id = C.user_id) AS Temp
GROUP BY id;