SELECT lyubimov_special.*

FROM lyubimov_special

INNER JOIN lyubimov_course ON lyubimov_course.special_id = lyubimov_special.special_id

INNER JOIN lyubimov_graduate ON lyubimov_graduate.course_id = lyubimov_course.course_id

INNER JOIN lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

LEFT JOIN lyubimov_day ON (lyubimov_graduate_time.day_id = lyubimov_day.day_id)

LEFT JOIN lyubimov_lesson_num ON (lyubimov_graduate_time.lesson_num_id = lyubimov_lesson_num.lesson_num_id)

WHERE lyubimov_lesson_num.time_lesson BETWEEN '14:00:00' and '18:00:00' AND (lyubimov_day.name = 'Четверг' OR lyubimov_day.name = 'Суббота') AND lyubimov_day.day_id IS NULL AND lyubimov_lesson_num.lesson_num_id IS NULL