SELECT 
    person_order.order_date AS order_date, 
    person.name || ' (age:' || person.age || ')' AS personal_information
FROM 
    person
NATURAL JOIN
    person_order
ORDER BY 
    person_order.order_date ASC, personal_information ASC;
