CREATE VIEW BREED_COUNT (id, breed, ct) AS
SELECT c.id, c.breed, fn_breed_count(c.id)
FROM dog as a
JOIN breedLookup as c ON c.id = a.breedId
GROUP BY c.id, c.breed
