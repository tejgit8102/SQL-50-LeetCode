SELECT person_name 
FROM
(
  SELECT *,
         SUM(weight) OVER (ORDER BY turn) AS total_weight
  FROM Queue
) temp
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
