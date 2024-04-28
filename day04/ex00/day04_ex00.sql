CREATE VIEW v_persons_female AS
SELECT * from person
WHERE gender='female';

CREATE VIEW v_persons_male AS
SELECT * from person
WHERE gender='male'
