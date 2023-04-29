-- Create your SELECT statement here
SELECT RANK() OVER(ORDER BY SUM(points) DESC) as "rank",
COALESCE( NULLIF(clan,'') , '[no clan specified]' ) AS clan,
SUM(points) AS total_points,
count("name") AS total_people
FROM people
GROUP BY clan