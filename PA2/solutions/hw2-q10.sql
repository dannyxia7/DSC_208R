SELECT DISTINCT p.name
FROM playlist p
WHERE NOT EXISTS (
    SELECT 1
    FROM playlist_track pt
    JOIN track t ON pt.track_id = t.track_id
    JOIN genre g ON t.genre_id = g.genre_id
    WHERE pt.playlist_id = p.playlist_id
    AND (g.name = 'Rock' OR g.name = 'Blues')
)
ORDER BY p.name ASC;