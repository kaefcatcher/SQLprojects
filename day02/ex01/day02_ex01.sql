SELECT missing_date::date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS missing_dates(missing_date)
LEFT JOIN (
    SELECT DISTINCT visit_date::date
    FROM person_visits
    WHERE person_id=1 or person_id= 2
) AS visits ON missing_dates.missing_date = visits.visit_date
WHERE visits.visit_date IS NULL
ORDER BY 1 ASC