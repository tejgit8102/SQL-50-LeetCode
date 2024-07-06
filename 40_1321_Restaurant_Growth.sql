SELECT
    t.visited_on,
    SUM(c.amount) AS amount,
    ROUND(SUM(c.amount) / 7, 2) AS average_amount
FROM
    (
        SELECT DISTINCT visited_on
        FROM Customer
        WHERE DATEDIFF(visited_on, (SELECT MIN(visited_on) FROM Customer)) >= 6
    ) t
LEFT JOIN Customer c
    ON DATEDIFF(t.visited_on, c.visited_on) BETWEEN 0 AND 6
GROUP BY 1
ORDER BY 1;
