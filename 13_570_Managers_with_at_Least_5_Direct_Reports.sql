SELECT m.name
FROM Employee m
LEFT JOIN Employee e ON m.id = e.managerId
GROUP BY m.id, m.name
HAVING COUNT(e.managerId) >= 5;
