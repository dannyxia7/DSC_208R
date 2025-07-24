SELECT
    a.albumID,
    COUNT(t.trackID)
FROM albums a
JOIN tracks t
ON a.albumID = t.albumID
GROUP BY a.albumID
HAVING COUNT(t.trackID) >= 25
;