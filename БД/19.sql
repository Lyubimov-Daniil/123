SELECT lyubimov_course.name, lyubimov_course.hours, lyubimov_special.name, lyubimov_day.name

FROM lyubimov_otdel

INNER JOIN lyubimov_special ON lyubimov_special.otdel_id = lyubimov_otdel.otdel_id

INNER JOIN lyubimov_course ON lyubimov_course.special_id = lyubimov_special.special_id

INNER JOIN lyubimov_graduate ON lyubimov_graduate.course_id = lyubimov_course.course_id

INNER JOIN lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

INNER JOIN lyubimov_day ON lyubimov_graduate_time.day_id = lyubimov_day.day_id

WHERE lyubimov_otdel.otdel_id = '2' AND (lyubimov_day.day_id = '3' OR lyubimov_day.day_id = '5'