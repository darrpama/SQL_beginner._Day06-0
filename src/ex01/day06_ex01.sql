INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT row_number() over () AS id, person.id AS person_id, pizzeria.id AS pizzeria_id,
       case
           when count(pizzeria.id) = 1 then 10.5
           when count(pizzeria.id) = 2 then 22
           else 30
       end AS discount
FROM person
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY person.id, pizzeria.id;