-- CREATE UNIQUE INDEX idx_menu_unique
-- ON menu (pizzeria_id, pizza_name);

-- EXPLAIN ANALYZE SELECT pizzeria_id, pizza_name, price
-- FROM menu
-- WHERE pizzeria_id = 3 AND pizza_name = 'cheese pizza';


-- drop index idx_menu_unique;

-- INSERT INTO menu
-- SELECT 
--     id + (SELECT MAX(id) FROM menu),
--     id % 5 + 1,
--     'clown pizza' || id,
--     '1000'
-- FROM 
--     generate_series(1, 1000000) as id;

-- DELETE FROM menu 
-- WHERE pizza_name like 'clown pizza%';