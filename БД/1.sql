SELECT
  lyubimov_user.lastname,
  lyubimov_user.firstname,
  lyubimov_user.patronomic,
  lyubimov_otdel.name,
  lyubimov_gender.name
FROM lyubimov_teacher
  INNER JOIN lyubimov_otdel
    ON lyubimov_teacher.otdel_id = lyubimov_otdel.otdel_id
  INNER JOIN lyubimov_user
    ON lyubimov_teacher.user_id = lyubimov_user.User_id
  INNER JOIN lyubimov_gender
    ON lyubimov_user.gender_id = lyubimov_gender.gender_id