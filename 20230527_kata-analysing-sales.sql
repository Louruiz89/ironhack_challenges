SELECT p.name as "product_name",
EXTRACT(YEAR FROM s.date) as "year",
EXTRACT(MONTH FROM s.date) as "month",	
EXTRACT(DAY FROM s.date) as "day",
SUM(p.price * sd.count) as "total"
FROM products p
JOIN sales_details sd ON p.id = sd.product_id
JOIN sales s ON sd.sale_id = s.id
GROUP BY product_name, ROLLUP(YEAR,MONTH,DAY)
ORDER BY product_name, year, month, day;