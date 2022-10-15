SELECT C1.name AS name, C1.id AS cid1, C2.id AS cid2, C1.commune_ID AS gid1, C2.commune_ID AS gid2, mhl_communes.name FROM mhl_cities C1 
JOIN mhl_cities C2 ON C1.name = C2.name AND C1.id < C2.id
INNER JOIN mhl_communes ON C1.commune_ID = mhl_communes.id 
	WHERE NOT C1.id = C2.id
    AND mhl_communes.name IS NOT NULL
    ORDER BY C1.name;