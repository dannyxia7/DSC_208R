SELECT
    art.name,
    COUNT(*) as tracks_total
FROM artists art
JOIN albums a
ON art.artistID = a.artistID
JOIN tracks t
ON a.albumID = t.albumID
JOIN genres g
ON t.genreID = g.genreID
WHERE g.name = "Blues"
GROUP BY art.name
;