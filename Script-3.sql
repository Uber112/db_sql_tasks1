-- Додаємо адресу клієнта
INSERT INTO address (address, district, city_id, postal_code, phone, last_update)
VALUES (
    '123 Main St', 'Downtown', 
    (SELECT city_id FROM city WHERE city = 'San Francisco'), 
    '94101', '123-456-7890', CURRENT_TIMESTAMP
);

-- Додаємо нового клієнта без явного значення для "active"
INSERT INTO customer (store_id, first_name, last_name, email, address_id, create_date, last_update)
VALUES (
    1, 'Alice', 'Cooper', 'alice.cooper@example.com', 
    (SELECT MAX(address_id) FROM address), 
    CURRENT_DATE, CURRENT_TIMESTAMP
);
