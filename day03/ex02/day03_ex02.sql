WITH allid AS (
    SELECT DISTINCT menu_id FROM person_order
)
SELECT pizza_name,price,pizzeria.name as pizzeria_name FROM menu
join pizzeria
on pizzeria.id=menu.pizzeria_id
WHERE menu.id NOT IN (SELECT menu_id FROM allid)
order by 1,2