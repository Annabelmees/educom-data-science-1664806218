SELECT mhl_cities.name, SUM(mhl_membertypes.id = 1) AS Gold, 
	SUM(mhl_membertypes.id = 2) AS Silver,
    SUM(mhl_membertypes.id = 3) AS Bronze,
    SUM(mhl_membertypes.id BETWEEN 4 AND 10) AS Other
FROM mhl_cities
INNER JOIN mhl_suppliers ON mhl_cities.id = mhl_suppliers.city_ID
INNER JOIN mhl_membertypes ON mhl_suppliers.membertype = mhl_membertypes.id
    GROUP BY mhl_cities.name
    ORDER BY Gold desc, Silver desc, Bronze desc, Other desc