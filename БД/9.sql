SELECT DISTINCT
  lyubimov_user.lastname,
  lyubimov_user.firstname,
  lyubimov_user.patronomic
FROM lyubimov_teacher
  INNER JOIN lyubimov_otdel
    ON lyubimov_teacher.otdel_id = lyubimov_otdel.otdel_id
  INNER JOIN lyubimov_special
    ON lyubimov_special.otdel_id = lyubimov_otdel.otdel_id
  INNER JOIN lyubimov_user
    ON lyubimov_teacher.user_id = lyubimov_user.User_id
  INNER JOIN lyubimov_course
    ON lyubimov_course.special_id = lyubimov_special.special_id
  WHERE lyubimov_course.special_id 