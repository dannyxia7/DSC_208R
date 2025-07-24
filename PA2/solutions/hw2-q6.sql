SELECT DISTINCT c.name AS carrier
FROM CARRIERS c
JOIN FLIGHTS f 
ON c.cid = f.carrier_id
WHERE 
    f.origin_city = 'San Diego CA' 
    AND f.dest_city = 'San Francisco CA'
ORDER BY carrier ASC;
