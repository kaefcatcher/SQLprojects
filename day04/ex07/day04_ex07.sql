INSERT INTO person_visits
SELECT max(person_visits.id)+1, 
       (SELECT person.id FROM person WHERE name = 'Dmitriy'),
       (SELECT pizzeria.id FROM pizzeria 
        JOIN menu ON menu.pizzeria_id = pizzeria.id 
        WHERE name <> 'Papa Johns' AND price < 800 
        LIMIT 1),
       '2022-01-08'
FROM person_visits;

refresh materialized view mv_dmitriy_visits_and_eats;