SELECT genre_name, count(musician_name) FROM genres g 
JOIN genresmusicians g2 ON g.genre_id = g2.musician_id 
JOIN musicians m ON g2.genre_id = m.musician_id 
GROUP BY genre_name 

SELECT count(song_name) FROM songs s 
JOIN albums a ON s.album_id = a.album_id 
WHERE a.release_year BETWEEN 2019 AND 2020;


SELECT album_name, to_char((AVG(s.duration) || ' second')::interval, 'HH24:MI:SS') FROM albums a 
JOIN songs s ON s.album_id = a.album_id 
GROUP BY album_name 


SELECT musician_name FROM musicians m 
JOIN albums_musucuans am ON m.musician_id = am.album_id 
JOIN albums a ON am.musician_id =a.album_id WHERE a.release_year != 2020


SELECT compilation_name FROM compilation c 
JOIN songs_compilatons sc ON c.compilation_id = sc.song_id 
JOIN songs s ON sc.compilation_id = s.song_id 
JOIN albums a ON s.album_id = a.album_id 
JOIN albums_musucuans am ON a.album_id = am.musician_id 
JOIN musicians m ON am.album_id = m.musician_id WHERE m.musician_name = 'Michael Jackson'


SELECT album_name FROM albums a 
JOIN albums_musucuans am ON a.album_id = am.musician_id 
JOIN musicians m ON am.album_id = m.musician_id 
JOIN genresmusicians g ON m.musician_id = g.genre_id 
GROUP BY album_name 
HAVING count(g.genre_id) > 1

SELECT s.song_name FROM songs s 
left JOIN songs_compilatons sc ON s.song_id = sc.compilation_id  WHERE sc.compilation_id  IS NULL  

SELECT musician_name FROM musicians m 
JOIN albums_musucuans am ON m.musician_id = am.album_id 
JOIN albums a ON am.musician_id = a.album_id 
JOIN songs s ON a.album_id = s.album_id 
WHERE s.duration = (SELECT min(duration) FROM songs)
GROUP BY musician_name


SELECT album_name FROM albums a 
JOIN songs s ON a.album_id = s.album_id
GROUP BY album_name
HAVING  count(song_name) = (SELECT count(song_name) FROM songs s  
GROUP BY album_id 
ORDER BY count(song_name)
LIMIT 1) 




