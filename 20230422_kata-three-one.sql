--SQL KATAS--

--KATA 1--

SELECT DATE(created_at) AS "day",
description,
count(*) AS "count"
FROM events
WHERE name = 'trained'
GROUP BY "day", description
ORDER BY "day" ASC

--KATA 2--

SELECT capital  
FROM countries
WHERE country LIKE 'E%'
AND continent IN ('Africa', 'Afrika')
ORDER BY capital
LIMIT 3

--KATA 3--

SELECT 
  DATE(s.transaction_date) as "day",
  d.name as "department",
  COUNT(s.id) as "sale_count"
  FROM department d
    INNER JOIN sale s on d.id = s.department_id
  group by "day", d.name
  order by "day" ASC