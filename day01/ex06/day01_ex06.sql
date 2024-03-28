SELECT person_visits.visit_date AS action_date, person.name as "person_name" FROM person_visits
JOIN person
ON person.id = person_visits.person_id
UNION
SELECT person_order.order_date AS action_date, person.name as "person_name" FROM person_order
JOIN person
ON person.id = person_order.person_id
ORDER by action_date ASC,person_name DESC