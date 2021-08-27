SELECT users.gender,
       COUNT(*) AS songplays
FROM songplays
  LEFT JOIN users ON users.user_id = songplays.user_id
GROUP BY 1;
