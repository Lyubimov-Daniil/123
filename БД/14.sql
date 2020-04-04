SELECT lyubimov_user.user_id, lyubimov_user.lastname, lyubimov_user.firstname

FROM lyubimov_user

Inner Join lyubimov_student ON lyubimov_student.user_id = lyubimov_user.user_id

Inner Join lyubimov_gruppa ON lyubimov_student.gruppa_id = lyubimov_gruppa.gruppa_id

Inner Join lyubimov_graduate ON lyubimov_graduate.gruppa_id = lyubimov_gruppa.gruppa_id

Inner Join lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

Inner Join lyubimov_day ON lyubimov_graduate_time.day_id = lyubimov_day.day_id AND lyubimov_day.name = 'Пятница'