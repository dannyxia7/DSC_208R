SELECT
    c.name,
    COUNT(*) as flightcount
FROM FLIGHTS f JOIN CARRIERS c
ON f.carrier_id = c.cid
WHERE origin_state = 'California'
GROUP BY c.name, f.month_id
HAVING flightcount > 5000
;