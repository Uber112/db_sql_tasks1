SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, 
       AVG(p.amount) AS avg_payment
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id;
