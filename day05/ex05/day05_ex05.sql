-- INSERT INTO menu
-- SELECT 
--     id + (SELECT MAX(id) FROM menu),
--     id % 5 + 1,
--     'clown pizza' || id,
--     '1000'
-- FROM 
--     generate_series(1, 1000000) as id;

-- INSERT INTO person
-- SELECT 
--     id + (SELECT MAX(id) FROM person),
--     'Valera' || id,
--     13+id,
--     'male'
-- FROM 
--     generate_series(1, 1000000) as id;

