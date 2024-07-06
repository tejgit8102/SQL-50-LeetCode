SELECT m.employee_id
FROM Employees m
LEFT JOIN Employees e ON m.manager_id = e.employee_id 
WHERE e.employee_id IS NULL 
  AND m.manager_id IS NOT NULL 
  AND m.salary < 30000
ORDER BY m.employee_id;
