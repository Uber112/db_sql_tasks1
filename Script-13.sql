SELECT AVG(EXTRACT(YEAR FROM CURRENT_DATE) - release_year) AS avg_film_age
FROM film;
