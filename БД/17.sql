SELECT lyubimov_user.user_id, lyubimov_user.lastname, lyubimov_user.firstname, lyubimov_otdel.name

FROM lyubimov_user

Inner Join lyubimov_teacher ON lyubimov_teacher.user_id = lyubimov_user.user_id

Inner Join lyubimov_otdel ON lyubimov_teacher.otdel_id = lyubimov_otdel.otdel_id

Inner Join lyubimov_graduate ON lyubimov_graduate.user_id = lyubimov_teacher.user_id

Inner Join lyubimov_graduate_time ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id

Inner Join lyubimov_day ON lyubimov_graduate_time.day_id = lyubimov_day.day_id AND lyubimov_day.name = 'Суббота