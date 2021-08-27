SELECT users.first_name || ' ' || LEFT(users.last_name, 1) || '.' AS user_name,
       users.level,
       COUNT(*) AS total_song_plays
FROM users
  LEFT JOIN songplays ON songplays.user_id = users.user_id
GROUP BY 1, users.user_id
ORDER BY 3 DESC
LIMIT 10;
