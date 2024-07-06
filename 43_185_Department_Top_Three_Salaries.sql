WITH CTE AS (
    SELECT *,
           DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
)

SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary 
FROM Department d
LEFT JOIN CTE e ON e.departmentId = d.id
WHERE rnk <= 3;
