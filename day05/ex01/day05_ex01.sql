explain analyze select pizza_name,pizzeria.name from menu
join pizzeria
on menu.pizzeria_id = pizzeria.id;