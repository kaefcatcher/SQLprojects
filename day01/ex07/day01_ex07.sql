SELECT person_order.order_date AS order_date, person.name || ' (age:' || person.age || ')'  as "personal_information" FROM person_order
JOIN person
ON person.id = person_order.person_id
ORDER BY 1,2 ASC