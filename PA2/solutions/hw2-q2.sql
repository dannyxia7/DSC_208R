SELECT 
    origin_city AS city
FROM FLIGHTS
WHERE actual_time IS NOT NULL
GROUP BY origin_city
HAVING MAX(actual_time) < 180
ORDER BY city;