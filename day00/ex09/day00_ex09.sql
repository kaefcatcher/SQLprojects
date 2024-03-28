SELECT 
(SELECT name from person where person.id =pv.person_id) AS person_name, 
(SELECT name from pizzeria where pizzeria.id = pv.pizzeria_id) AS pizzeria_name 
FROM (SELECT * FROM person_visits where visit_date BETWEEN '2022-01-07' and '2022-01-09') AS pv
ORDER by person_name ASC,
pizzeria_name DESC
