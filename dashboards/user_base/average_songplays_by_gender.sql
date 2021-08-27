SELECT users.gender,
       COUNT(*)/COUNT(DISTINCT users.user_id) AS average_songplays_per_user
FROM users
  LEFT JOIN songplays ON songplays.user_id = users.user_id
GROUP BY 1;
