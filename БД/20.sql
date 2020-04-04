SELECT lyubimov_otdel.name

From lyubimov_otdel

Inner Join lyubimov_teacher ON lyubimov_teacher.otdel_id = lyubimov_otdel.otdel_id

Inner Join lyubimov_graduate ON lyubimov_graduate.user_id = lyubimov_teacher.user_id

Inner Join lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

Inner Join lyubimov_day ON lyubimov_graduate_time.day_id = lyubimov_day.day_id AND lyubimov_day.name = 'Вторник'

Inner Join lyubimov_lesson_num On lyubimov_graduate_time.lesson_num_id = lyubimov_lesson_num.lesson_num_id AND lyubimov_lesson_num.time_lesson BETWEEN '09:00:00' AND '12:00:00'