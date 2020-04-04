SELECT
  lyubimov_special.name
FROM lyubimov_course
  INNER JOIN lyubimov_special
    ON lyubimov_course.special_id = lyubimov_special.special_id
  INNER JOIN lyubimov_graduate
    ON lyubimov_graduate.course_id = lyubimov_course.course_id
WHERE lyubimov_graduate.course_id IS NULL