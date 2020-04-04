SELECT
  lyubimov_user.lastname,
 lyubimov_user.firstname,
 lyubimov_user.patronomic,
  lyubimov_gruppa.name
FROM lyubimov_student
  INNER JOIN lyubimov_gruppa
    ON lyubimov_student.gruppa_id = lyubimov_gruppa.gruppa_id
  INNER JOIN lyubimov_special
    ON lyubimov_gruppa.special_id = lyubimov_special.special_id
  INNER JOIN lyubimov_course
    ON lyubimov_course.special_id = lyubimov_special.special_id
  INNER JOIN lyubimov_user
    ON lyubimov_student.user_id = lyubimov_user.User_id
  WHERE lyubimov_course.course_id=4