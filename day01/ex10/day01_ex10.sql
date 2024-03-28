SELECT  person.name AS person_name , menu.pizza_name as pizza_name, pizzeria.name as pizzeria_name 

FROM person_order
JOIN person
ON person.id = person_order.person_id
JOIN menu
on menu.id = person_order.menu_id
JOIN pizzeria
ON pizzeria.id =menu.pizzeria_id
ORDER BY 1,2,3 ASC