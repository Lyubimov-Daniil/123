SELECT

lyubimov_day.name, COUNT(*)

FROM lyubimov_course

INNER JOIN lyubimov_graduate ON lyubimov_graduate.course_id = lyubimov_course.course_id

INNER JOIN lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id= lyubimov_graduate.graduate_id

INNER JOIN lyubimov_day ON lyubimov_graduate_time.day_id=lyubimov_day.day_id

GROUP BY lyubimov_day.day_id