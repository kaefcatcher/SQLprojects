select generated_date from v_generated_dates
except 
select visit_date from person_visits
ORDER BY 1 asc