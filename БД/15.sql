SELECT lyubimov_day.*

FROM lyubimov_day

LEFT JOIN lyubimov_graduate_time ON (lyubimov_day.day_id = lyubimov_graduate_time.day_id)

WHERE lyubimov_graduate_time.graduate_time_id IS NULL