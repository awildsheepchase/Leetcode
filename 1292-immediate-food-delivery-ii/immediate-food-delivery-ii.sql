# Write your MySQL query statement below
SELECT ROUND(SUM(A)/COUNT(F)*100,2) AS immediate_percentage
FROM(
    SELECT F,IF(order_date = customer_pref_delivery_date,1,0) AS A
    FROM (
        SELECT MIN(order_date) AS Fdate ,customer_id, 1 AS F
        FROM Delivery
        GROUP BY customer_id ) AS T 
    LEFT JOIN Delivery D ON T.customer_id = D.customer_id AND T.Fdate = D.order_date
) AS TT
# First, identify the initial order for all customers, then determine the quantity of orders on the same day.