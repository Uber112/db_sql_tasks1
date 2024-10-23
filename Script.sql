SELECT 
    f.title AS Назва_фільму, 
    f.length AS Тривалість_хвилин, 
    c.name AS Категорія
FROM 
    film f
JOIN 
    category c ON f.film_id = c.category_id;