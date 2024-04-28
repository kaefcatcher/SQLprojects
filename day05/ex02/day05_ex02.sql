-- create index idx_person_name
-- on person (upper (NAME));


-- INSERT INTO person
-- SELECT 
--     id + (SELECT MAX(id) FROM person),
--     'Valera' || id,
--     13+id,
--     'male'
-- FROM 
--     generate_series(1, 1000000) as id;

-- drop database day5;

-- explain analyze select * from person where upper(name) = 'VALERA100'

-- delete from person where name like 'Valera%'