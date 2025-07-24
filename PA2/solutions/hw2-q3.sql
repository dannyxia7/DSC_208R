SELECT 
    origin_city,
    COALESCE(
        ROUND(100.0 * SUM(CASE WHEN actual_time IS NOT NULL AND actual_time < 180 THEN 1 ELSE 0 END) 
        / NULLIF(COUNT(*), 0), 2), 
    0) AS percentage
FROM FLIGHTS
GROUP BY origin_city
ORDER BY percentage ASC;