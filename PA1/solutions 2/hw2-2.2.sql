SELECT
    SUM(f.capacity) as totalcapacity
FROM FLIGHTS f
WHERE f.month_id = 7 AND f.day_of_month = 1
;