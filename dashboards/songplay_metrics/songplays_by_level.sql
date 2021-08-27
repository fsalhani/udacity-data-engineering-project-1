SELECT level,
       COUNT(*) AS song_plays
FROM songplays
GROUP BY 1;
