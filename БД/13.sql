SELECT lyubimov_course.course_id, lyubimov_course.name

FROM lyubimov_course

Inner Join lyubimov_graduate ON lyubimov_graduate.course_id = lyubimov_course.course_id

Inner Join lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

Inner Join lyubimov_lesson_num ON lyubimov_graduate_time.lesson_num_id = lyubimov_lesson_num.lesson_num_id AND lyubimov_lesson_num.time_lesson BETWEEN '12:30:00' AND '18:30:00'