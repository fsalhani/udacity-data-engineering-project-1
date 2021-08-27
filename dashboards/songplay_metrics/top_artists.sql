SELECT artists.name,
       COUNT(*) AS song_plays
FROM songplays
  LEFT JOIN artists ON songplays.artist_id = artists.artist_id
GROUP BY 1
ORDER BY 2 DESC;
