
SELECT
    z.zipcode,COUNT(t.tree_id) AS num_trees
FROM
    zipcodes z
JOIN trees t ON ST_Within(t.geometry, z.geometry)
GROUP BY z.zipcode
ORDER BY num_trees DESC
LIMIT 10;
