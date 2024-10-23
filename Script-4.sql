-- Оновлюємо адресу для клієнта "Alice Cooper"
UPDATE address
SET address = '456 Elm St', last_update = CURRENT_TIMESTAMP
WHERE address_id = (
    SELECT address_id 
    FROM customer 
    WHERE first_name = 'Alice' AND last_name = 'Cooper'
);
