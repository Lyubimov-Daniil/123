SELECT
  lyubimov_gruppa.name,
  COUNT(lyubimov_course.course_id)
FROM lyubimov_gruppa
  INNER JOIN lyubimov_special
    ON lyubimov_gruppa.special_id = lyubimov_special.special_id
  INNER JOIN lyubimov_course
    ON lyubimov_course.special_id = lyubimov_special.special_id
  GROUP BY lyubimov_course.course_id