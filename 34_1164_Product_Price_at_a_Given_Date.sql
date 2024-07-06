-- Query Part 1: Retrieve latest price for each product_id before '2019-08-16'
SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN 
    (
    SELECT product_id, MAX(change_date) AS change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
    )
    
UNION
    
-- Query Part 2: Set default price of 10 for products with no prior price change before '2019-08-16'
SELECT product_id, 10 AS price
FROM Products
GROUP BY 1
HAVING MIN(change_date) > '2019-08-16';
