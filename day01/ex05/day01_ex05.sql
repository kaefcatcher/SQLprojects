SELECT person.id as "person.id",
 person.name as "person.name",
 person.age as "age",
 person.gender as "gender",
  person.address as "address",
   pizzeria.id as "pizzeria.id",
   pizzeria.name as "pizzeria.name",
pizzeria.rating as "rating" from person,pizzeria
ORDER BY person.id,pizzeria.id