SELECT rating, COUNT(film_id) AS film_count
FROM film
GROUP BY rating;
