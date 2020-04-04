SELECT lyubimov_user_id, lyubimov_user.lastname, lyubimov_user.firstname

FROM lyubimov_user

Inner Join lyubimov_student ON lyubimov_student.user_id = lyubimov_user.user_id

Inner Join lyubimov_gruppa ON lyubimov_student.gruppa_id = lyubimov_gruppa.gruppa_id

SELECT  Join lyubimov_graduate ON lyubimov_graduate.gruppa_id = lyubimov_gruppa.gruppa_id

Inner Join lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

Inner Join lyubimov_lesson_num ON lyubimov_graduate_time.lesson_num_id = lyubimov_lesson_num.lesson_num_id AND lyubimov_lesson_num.time_lesson BETWEEN '10:30:00' AND '18:30:00