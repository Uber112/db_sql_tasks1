SELECT 
    f.title AS Назва_фільму, 
    COUNT(r.rental_id) AS Кількість_оренд
FROM 
    rental r
JOIN 
    inventory i ON r.inventory_id = i.inventory_id
JOIN 
    film f ON i.film_id = f.film_id
GROUP BY 
    f.title
ORDER BY 
    Кількість_оренд DESC
LIMIT 5;
