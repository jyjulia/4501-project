
SELECT tree_id, spc_common, health, status, ST_AsText(geometry) as coordinate_location
FROM trees
WHERE ST_DistanceSphere(ST_MakePoint(-73.96253174434912, 40.80737875669467), geometry) <= 804.672;  -- 0.5 mile in meters
