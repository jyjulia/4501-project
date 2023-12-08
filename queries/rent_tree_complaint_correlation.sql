
WITH rents_tree_complaints AS (
    SELECT t.zipcode, ROUND(r."2023-01-31"::numeric, 2) AS rent, COUNT(Distinct t.tree_id) as num_trees, COUNT(c.complaint_type) as num_complaints
    FROM trees t
    JOIN rents r ON t.zipcode = r.zipcode
    LEFT JOIN (SELECT zipcode, complaint_type
    FROM complaints
    WHERE date between '2023-01-01' and '2023-01-31') c ON t.zipcode = c.zipcode
    GROUP BY t.zipcode, r."2023-01-31"
)
SELECT *
FROM (
    SELECT *
    FROM rents_tree_complaints
    WHERE rent IS NOT NULL
    ORDER BY rent DESC
    LIMIT 5
) AS high
UNION ALL
SELECT *
FROM (
    SELECT *
    FROM rents_tree_complaints
    WHERE rent IS NOT NULL
    ORDER BY rent ASC
    LIMIT 5
) AS low;

