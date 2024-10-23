SELECT 
    f.title AS Назва_фільму, 
    r.rental_period AS Дата_оренди
FROM 
    rental r
JOIN 
    film f ON r.rental_id = f.film_id 
JOIN 
    customer c ON r.rental_id = c.customer_id 
WHERE 
    c.first_name = 'LINDA';