SELECT a.name
FROM artist a
JOIN album al ON a.artist_id = al.artist_id
JOIN track t ON al.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY a.artist_id, a.name
HAVING COUNT(DISTINCT g.genre_id) >= 3
ORDER BY a.name ASC;
