SELECT
  lyubimov_course.name
FROM lyubimov_graduate
  INNER JOIN lyubimov_course
    ON lyubimov_graduate.course_id = lyubimov_course.course_id
WHERE lyubimov_course.special_id IS NULL