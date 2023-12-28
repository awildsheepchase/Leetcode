# Write your MySQL query statement below
SELECT 
    IF(C = MAX(C),name,name) AS results
FROM
    (SELECT COUNT(name) AS C ,name
    FROM MovieRating R LEFT JOIN Users U ON R.user_id = U.user_id
    GROUP BY name
    ORDER BY C DESC,U.name ASC) AS A

UNION ALL

SELECT
    IF(HI = MAX(HI),title,title) AS results
FROM(
    SELECT AVG(MR.rating) AS HI,title
    FROM MovieRating MR LEFT JOIN Movies M ON MR.movie_id = M.movie_id
    WHERE MR.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY MR.movie_id
    ORDER BY HI DESC, M.title ASC) AS B;