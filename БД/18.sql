SELECT lyubimov_user.user_id, lyubimov_user.lastname, lyubimov_user.firstname, lyubimov_gruppa.name, lyubimov_special.name

FROM lyubimov_user

INNER JOIN lyubimov_student ON lyubimov_student.user_id = lyubimov_user.user_id

INNER JOIN lyubimov_gruppa ON lyubimov_gruppa.gruppa_id = lyubimov_student.gruppa_id

INNER JOIN lyubimov_special ON lyubimov_special.special_id = lyubimov_gruppa.special_id

INNER JOIN lyubimov_course ON lyubimov_course.special_id = lyubimov_special.special_id AND lyubimov_course.hours > '95'