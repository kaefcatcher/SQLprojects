select person.name from person_order
join person
on person.id=person_order.person_id
join menu
on menu.id = person_order.menu_id
where person.gender='male' and menu.pizza_name in ('pepperoni pizza','mushroom pizza')
and person.address in ('Moscow','Samara')
order by 1 desc