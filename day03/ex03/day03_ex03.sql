with female as(
    SELECT COUNT(pizzeria.name)as f,pizzeria.name as pizzeria_name
     FROM person_visits
     JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
     JOIN person ON person_visits.person_id = person.id
     WHERE person.gender = 'female'
     group by pizzeria.name
     
),
 male as(SELECT COUNT(pizzeria.name) as m,pizzeria.name as pizzeria_name
     FROM person_visits
     JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
     JOIN person ON person_visits.person_id = person.id
     WHERE person.gender = 'male'
    group by pizzeria.name
)

select male.pizzeria_name from male
join female
on male.pizzeria_name=female.pizzeria_name and f<>m
ORDER BY 1