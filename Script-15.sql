SELECT TO_CHAR(payment_date, 'YYYY-MM') AS month, 
       SUM(amount) AS total_payments
FROM payment
GROUP BY month
ORDER BY month;
