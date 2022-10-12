SElECT mhl_hitcount.hitcount, mhl_suppliers.name, mhl_cities.name, mhl_communes.name, mhl_districts.name FROM mhl_hitcount 
INNER JOIN mhl_suppliers ON mhl_hitcount.supplier_ID = mhl_suppliers.id
INNER JOIN mhl_cities ON mhl_suppliers.city_ID = mhl_cities.id
INNER JOIN mhl_communes ON mhl_cities.commune_ID = mhl_communes.id
INNER JOIN mhl_districts ON mhl_communes.district_ID = mhl_districts.id
	WHERE mhl_hitcount.year = 2014 AND mhl_hitcount.month = 1
	AND (mhl_districts.name = 'Limburg' OR mhl_districts.name = 'Noord-Brabant' OR mhl_districts.name = 'Zeeland');