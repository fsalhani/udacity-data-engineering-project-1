SELECT CASE time.weekday
         WHEN 0 THEN 'Sun'
         WHEN 1 THEN 'Mon'
         WHEN 2 THEN 'Tue'
         WHEN 3 THEN 'Wed'
         WHEN 4 THEN 'Thu'
         WHEN 5 THEN 'Fri'
         WHEN 6 THEN 'Sat'
       END AS weekday,
       COUNT(*)/COUNT(DISTINCT time.day) AS average_songplays
FROM songplays
  INNER JOIN time ON time.start_time = songplays.start_time
GROUP BY 1, time.weekday
ORDER BY time.weekday;
