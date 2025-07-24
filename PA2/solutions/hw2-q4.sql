SELECT DISTINCT 
    f2.dest_city AS city
FROM FLIGHTS f1
JOIN FLIGHTS f2
ON f1.dest_city = f2.origin_city
WHERE 
    f1.origin_city = 'San Diego CA' 
    AND f2.dest_city != 'San Diego CA'
    AND f2.dest_city NOT IN (
        SELECT dest_city 
        FROM FLIGHTS 
        WHERE origin_city = 'San Diego CA'
    )
ORDER BY city ASC;