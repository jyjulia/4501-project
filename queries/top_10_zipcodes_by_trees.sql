
SELECT zipcode, COUNT(*) as num_trees
FROM trees
GROUP BY zipcode
ORDER BY num_trees DESC
LIMIT 10;
