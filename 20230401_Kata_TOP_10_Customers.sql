-- Replace with your query (in pure SQL)
SELECT c.customer_id,
c.email,
COUNT(p.payment_id) as "payments_count",
CAST (SUM(p.amount) AS FLOAT) as "total_amount"
FROM customer as c
INNER JOIN payment as p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.email
ORDER BY "total_amount" desc
LIMIT 10