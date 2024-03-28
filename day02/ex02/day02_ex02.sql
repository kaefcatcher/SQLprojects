Select COALESCE(person.name,'-'),visit_date,COALESCE(pizzeria.name,'-') from person_visits
full join person
on person.id=person_id
FULL JOIN pizzeria
on pizzeria.id=pizzeria_id

ORDER BY 1,2,3