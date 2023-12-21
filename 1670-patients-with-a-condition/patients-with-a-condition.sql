# Write your MySQL query statement below
SELECT *
FROM Patients
# WHERE REGEXP_LIKE(conditions, '^DIAB1') OR REGEXP_LIKE(conditions, ' DIAB1');
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%';
