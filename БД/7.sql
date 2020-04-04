SELECT
  lyubimov_otdel.name,
  COUNT(lyubimov_otdel.name)
FROM lyubimov_student
  INNER JOIN lyubimov_user
    ON lyubimov_student.user_id = lyubimov_user.User_id
  INNER JOIN lyubimov_gruppa
    ON lyubimov_student.gruppa_id = lyubimov_gruppa.gruppa_id
  INNER JOIN lyubimov_special
    ON lyubimov_gruppa.special_id = lyubimov_special.special_id
  INNER JOIN lyubimov_otdel
    ON lyubimov_special.otdel_id = lyubimov_otdel.otdel_id
GROUP BY lyubimov_otdel.name
         