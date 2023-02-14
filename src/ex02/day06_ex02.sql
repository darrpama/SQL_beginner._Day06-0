SELECT person.name, menu.pizza_name, menu.price,
       (menu.price - menu.price * person_discounts.discount / 100) AS discount_price,
       pizzeria.name AS pizzeria_name
FROM person
JOIN person_discounts ON person.id = person_discounts.person_id
JOIN pizzeria ON pizzeria.id = person_discounts.pizzeria_id
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
ORDER BY person.name, pizza_name;
