SELECT
  lyubimov_special.name,
  lyubimov_course.hours,
  lyubimov_course.name
FROM lyubimov_special
  INNER JOIN lyubimov_course
    ON lyubimov_course.special_id = lyubimov_special.special_id
  WHERE lyubimov_special.otdel_id=2