SELECT user_id,
       CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTR(name, 2))) AS name
FROM Users
ORDER BY 1;
