
SELECT zipcode, COUNT(*) as num_complaints
FROM complaints
WHERE date BETWEEN '2022-10-01' AND '2023-09-30'
GROUP BY zipcode
ORDER BY num_complaints DESC
LIMIT 10;
