SELECT songs.title,
       COUNT(*) AS song_plays
FROM songplays
  LEFT JOIN songs ON songplays.song_id = songs.song_id
GROUP BY 1
ORDER BY 2 DESC;
