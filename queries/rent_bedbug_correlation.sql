
WITH rents_bedbug AS (
    SELECT r.zipcode, ROUND(r."2023-01-31"::numeric, 2) AS rent, COUNT(b.reporting_id) as num_complaints
    FROM rents r 
    LEFT JOIN (SELECT zipcode, reporting_id
    FROM bedbug
    WHERE date between '2023-01-01' and '2023-01-31') b ON b.zipcode = r.zipcode
    GROUP BY r.zipcode, r."2023-01-31"
)
SELECT *
FROM (
    SELECT *
    FROM rents_bedbug
    WHERE rent IS NOT NULL
    ORDER BY rent DESC
    LIMIT 5
) AS high
UNION ALL
SELECT *
FROM (
    SELECT *
    FROM rents_bedbug
    WHERE rent IS NOT NULL
    ORDER BY rent ASC
    LIMIT 5
) AS low;

