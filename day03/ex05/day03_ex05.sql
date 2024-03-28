with visits as (SELECT * from person_visits
join person
on person_id=person.id
where name='Andrey'
),
orders as (SELECT * from person_order
join person
on person_id=person.id
where name='Andrey'
),
date_ as (
select * from visits
left join orders
on visit_date=orders.order_date
where orders.order_date is NULL
)

SELECT pizzeria.name from date_
join pizzeria
on date_.pizzeria_id=pizzeria.id
ORDER BY 1