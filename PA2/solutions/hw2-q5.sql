SELECT DISTINCT 
    c.name AS carrier
FROM CARRIERS c
WHERE c.cid IN (
    SELECT DISTINCT 
        f.carrier_id 
    FROM FLIGHTS f
    WHERE 
        f.origin_city = 'San Diego CA' 
        AND f.dest_city = 'San Francisco CA' 
)
ORDER BY carrier ASC;