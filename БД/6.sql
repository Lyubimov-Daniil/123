SELECT
  lyubimov_user.lastname,
  lyubimov_user.firstname,
  lyubimov_user.patronomic,
  lyubimov_course.name,
  lyubimov_course.hours,
  lyubimov_gruppa.name
FROM lyubimov_teacher
  INNER JOIN lyubimov_user
    ON lyubimov_teacher.user_id = lyubimov_user.User_id
  INNER JOIN lyubimov_graduate
    ON lyubimov_graduate.user_id = lyubimov_teacher.user_id
  INNER JOIN lyubimov_graduate_time
    ON lyubimov_graduate_time.graduate_id = lyubimov_graduate.graduate_id
  INNER JOIN lyubimov_lesson_num
    ON lyubimov_graduate_time.lesson_num_id = lyubimov_lesson_num.lesson_num_id
  INNER JOIN lyubimov_course
    ON lyubimov_graduate.course_id = lyubimov_course.course_id
  INNER JOIN lyubimov_gruppa
    ON lyubimov_graduate.gruppa_id = lyubimov_gruppa.gruppa_id
WHERE lyubimov_lesson_num.time_lesson between '08:30:00' AND '15:00:00'