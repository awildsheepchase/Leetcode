# Write your MySQL query statement below
SELECT 
    query_name,
    ROUND(SUM(rating/position)/COUNT(result),2) AS quality,
    ROUND((SUM(rating < 3)/COUNT(DISTINCT result)* 100),2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;
# The test case 12 contains null.