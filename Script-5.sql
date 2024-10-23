-- Видаляємо оренди клієнта "Alice Cooper"
DELETE FROM rental
WHERE customer_id = (
    SELECT customer_id 
    FROM customer 
    WHERE first_name = 'Alice' AND last_name = 'Cooper'
);

-- Видаляємо клієнта "Alice Cooper"
DELETE FROM customer
WHERE first_name = 'Alice' AND last_name = 'Cooper';

-- Опціонально: Видаляємо адресу, якщо вона більше ніде не використовується
DELETE FROM address
WHERE address = '456 Elm St'
  AND address_id NOT IN (SELECT address_id FROM customer);
