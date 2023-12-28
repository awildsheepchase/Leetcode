# Write your MySQL query statement below
SELECT  month, country,
        COUNT(approved) AS trans_count,
        SUM(approved) AS approved_count,
        SUM(amount) AS trans_total_amount,
        SUM(approved_amount) AS approved_total_amount
FROM(
    SELECT  DATE_FORMAT(trans_date,'%Y-%m') AS month,
            country, amount,
            CASE WHEN state = 'approved' THEN 1
            ELSE 0 END AS approved,
            CASE WHEN state = 'approved' THEN amount
            ELSE 0 END AS approved_amount
    FROM Transactions ) AS T
GROUP BY month, country;