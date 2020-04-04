SELECT
  lyubimov_gruppa.name,
  lyubimov_gruppa.date_begin,
  lyubimov_gruppa.date_end
FROM lyubimov_gruppa
  INNER JOIN lyubimov_special
    ON lyubimov_gruppa.special_id = lyubimov_special.special_id
WHERE lyubimov_special.special_id=1