INSERT INTO person_order
SELECT 
    id + (SELECT MAX(id) FROM person_order),
    id,
    (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
    '2022-02-25'
FROM 
    generate_series((SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person)) AS id;
