SELECT DATE(start_time), COUNT(*)
FROM songplays
GROUP BY 1;
