SELECT lyubimov_special.name

FROM lyubimov_special

Inner Join lyubimov_course ON lyubimov_course.special_id = lyubimov_special.special_id

Inner Join lyubimov_graduate ON lyubimov_graduate.course_id = lyubimov_course.course_id

Inner Join lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

Inner Join lyubimov_day ON lyubimov_graduate_time.day_id = lyubimov_day.day_id AND lyubimov_day.name = 'Вторник'