SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode, mhl_cities.name FROM mhl_suppliers INNER JOIN mhl_cities ON mhl_suppliers.city_ID = mhl_cities.id WHERE city_ID IN (
    SELECT id FROM mhl_cities WHERE commune_ID IN (
        SELECT id FROM mhl_communes WHERE name = 'Steenwijkerland')); 