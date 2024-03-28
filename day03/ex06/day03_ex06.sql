with pizza as (SELECT pizza_name,pizzeria.name,price from menu 
join pizzeria
on menu.pizzeria_id=pizzeria.id
)

select pizza.pizza_name,pizza.name as pizzeria_name_1,pizza2.name as pizzeria_name_2,pizza.price from pizza
join pizza as pizza2
on pizza.pizza_name=pizza2.pizza_name and pizza.price=pizza2.price
where pizza.name < pizza2.name
order by 1