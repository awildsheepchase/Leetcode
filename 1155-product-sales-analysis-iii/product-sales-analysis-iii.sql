# Write your MySQL query statement below
SELECT product_id,
        year AS first_year,
        quantity, 
        price
FROM Sales S
WHERE (product_id,year) in (SELECT  product_id,
                                    MIN(year)
                            FROM Sales s
                            GROUP BY product_id );
