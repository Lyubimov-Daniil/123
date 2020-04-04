SELECT
  lyubimov_user.lastname,
  lyubimov_user.firstname,
  lyubimov_user.patronomic,
  lyubimov_gruppa.name,
  lyubimov_special.name,
  lyubimov_otdel.name
FROM lyubimov_teacher
  INNER JOIN lyubimov_user
    ON lyubimov_teacher.user_id = lyubimov_user.User_id
  INNER JOIN lyubimov_otdel
    ON lyubimov_teacher.otdel_id = lyubimov_otdel.otdel_id
  INNER JOIN lyubimov_special
    ON lyubimov_special.otdel_id = lyubimov_otdel.otdel_id
  INNER JOIN lyubimov_gruppa
    ON lyubimov_gruppa.special_id = lyubimov_special.special_id
  WHERE lyubimov_special.special_id=1