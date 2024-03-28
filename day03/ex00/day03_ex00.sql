select menu.pizza_name,menu.price,pizzeria.name,person_visits.visit_date from menu
join person_visits
on menu.pizzeria_id=person_visits.pizzeria_id
join person
on person.id=person_visits.person_id
join pizzeria
on menu.pizzeria_id=pizzeria.id
where person.name = 'Kate' and menu.price between 800 and 1000
order by 1,2,3