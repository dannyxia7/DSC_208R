SELECT
    c.name,
    100.0 * SUM(CASE WHEN f.canceled = 1 THEN 1 ELSE 0 END) / SUM(CASE WHEN f.canceled = 0 THEN 1 ELSE 0 END) as percent
FROM FLIGHTS f JOIN CARRIERS c
ON f.carrier_id = c.cid
WHERE f.origin_city = "San Diego CA"
GROUP BY c.name
HAVING percent >= 1.0 
ORDER BY percent ASC
;