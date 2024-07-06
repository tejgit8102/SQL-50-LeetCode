SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT *,
           LAG(num, 1) OVER (ORDER BY id) AS lag_num1,
           LAG(num, 2) OVER (ORDER BY id) AS lag_num2
    FROM Logs
) temp1
WHERE num = lag_num1 AND lag_num1 = lag_num2;
