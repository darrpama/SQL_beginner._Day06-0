COMMENT ON COLUMN person_discounts.id
    IS 'id это первичный ключ, позволяющий однозначно идентифицировать персональную скидку';
COMMENT ON COLUMN person_discounts.person_id
    IS 'person_id это внешний ключ, связывающий скидку и человека, который этой скидкой обладает';
COMMENT ON COLUMN person_discounts.pizzeria_id
    IS 'pizzeria_id это внешний ключ, связывающий скидку и пиццерию, в которой делается заказ';
COMMENT ON COLUMN person_discounts.discount
    IS 'discount это собственно скидка в процентах, для 1 заказа 10.5%, для 2 - 22%, для 3 - 30%';
