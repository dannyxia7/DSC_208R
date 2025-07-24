WITH RankedFlights AS (
    SELECT 
        origin_city, 
        dest_city, 
        actual_time,
        RANK() OVER (PARTITION BY origin_city ORDER BY actual_time DESC) AS rnk
    FROM flights
),
cte AS (
SELECT origin_city
FROM RankedFlights
WHERE rnk = 1
GROUP BY origin_city
ORDER BY origin_city
)
SELECT COUNT(*) FROM cte