SELECT p.product_name, SUM(o.unit) AS total_units
FROM Orders o
LEFT JOIN Products p ON o.product_id = p.product_id
WHERE o.order_date LIKE '2020-02%'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;
