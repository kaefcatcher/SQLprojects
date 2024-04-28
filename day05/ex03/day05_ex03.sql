-- create index idx_person_order_multi 
-- on person_order (person_id,menu_id)

-- explain analyze SELECT person_id, menu_id,order_date
-- FROM person_order
-- WHERE person_id = 8 AND menu_id = 19

-- INSERT INTO person_order
-- SELECT 
--     id + (SELECT MAX(id) FROM person_order),
--     id%8+1,
--     id%12+2,
--     '2022-06-01'
-- FROM 
--     generate_series(1, 1000000) as id;
-- delete from person_order where order_date = '2022-06-01';
-- create index idx_person_order_multi 
-- on person_order (index_cols)

