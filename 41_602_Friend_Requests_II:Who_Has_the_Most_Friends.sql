SELECT requester_id AS id, COUNT(*) AS num
FROM (
    SELECT requester_id
    FROM RequestAccepted
    
    UNION ALL 
    
    SELECT accepter_id
    FROM RequestAccepted
) temp1
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
