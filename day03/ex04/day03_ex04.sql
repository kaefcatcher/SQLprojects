with female as(
    SELECT pizzeria.name as pizzeria_name
     FROM person_visits
     JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
     JOIN person ON person_visits.person_id = person.id
     WHERE person.gender = 'female'
     group by pizzeria.name
     
),
 male as(SELECT pizzeria.name as pizzeria_name
     FROM person_visits
     JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
     JOIN person ON person_visits.person_id = person.id
     WHERE person.gender = 'male'
    group by pizzeria.name
)

select male.pizzeria_name from male
left join female
on male.pizza_name=female.pizzeria_name

ORDER BY 1