SELECT COUNT(*) AS film_count
FROM rental
WHERE rental_period && tsrange('2005-05-25 00:00:00', '2005-06-01 23:59:59', '[]');
