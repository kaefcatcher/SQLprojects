with missing_dates as (
    SELECT missing_date::date 
    FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS missing_dates(missing_date)
    
),visits as
(SELECT DISTINCT visit_date::date
    FROM person_visits
    WHERE person_id=1 or person_id= 2)

SELECT missing_date from missing_dates
left join visits
on missing_dates.missing_date = visits.visit_date
 where visits.visit_date is null
 order by 1 asc