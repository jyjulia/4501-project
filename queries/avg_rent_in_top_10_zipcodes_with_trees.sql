
SELECT t.zipcode, ROUND(r."2023-08-31"::numeric, 2) AS rent
FROM trees t
JOIN rents r ON t.zipcode = r.zipcode
GROUP BY t.zipcode, rent
ORDER BY COUNT(*) DESC
LIMIT 10;
