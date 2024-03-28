with cheese as (
    select DISTINCT (person.name),menu.pizza_name from person_order
join person
on person.id=person_order.person_id
join menu
on menu.id = person_order.menu_id
where person.gender='female' and menu.pizza_name='cheese pizza'
)


select DISTINCT (person.name)from person_order
join person
on person.id=person_order.person_id
join menu
on menu.id = person_order.menu_id
join cheese
on cheese.name=person.name
where person.gender='female' and menu.pizza_name='pepperoni pizza'
order by 1