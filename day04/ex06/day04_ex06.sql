create materialized view mv_dmitriy_visits_and_eats as
select pizzeria.name from person_visits
join person
on person_visits.person_id = person.id
join pizzeria
on person_visits.pizzeria_id=pizzeria.id
join menu
on person_visits.pizzeria_id=menu.pizzeria_id
where person.name='Dmitriy' and person_visits.visit_date='2022-01-08' and menu.price<800