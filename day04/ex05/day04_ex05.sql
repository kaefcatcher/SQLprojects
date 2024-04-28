
CREATE view v_price_with_discount as
SELECT name, pizza_name,price,(price - price*0.1)::int as discount_price  from person
JOIN person_order
on person.id = person_order.person_id
join menu
on person_order.menu_id = menu.id
order by name,pizza_name