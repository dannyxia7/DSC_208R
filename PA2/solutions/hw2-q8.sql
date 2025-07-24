SELECT DISTINCT t.name
FROM track t
WHERE NOT EXISTS (
    SELECT 1 
    FROM playlist_track pt 
    WHERE pt.track_id = t.track_id AND pt.playlist_id = 5);
ORDER BY t.name ASC;