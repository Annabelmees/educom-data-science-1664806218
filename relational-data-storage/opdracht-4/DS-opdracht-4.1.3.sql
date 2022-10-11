SELECT mhl_rubrieken.name, mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode FROM mhl_suppliers 
INNER JOIN mhl_suppliers_mhl_rubriek_view ON mhl_suppliers.id = mhl_suppliers_mhl_rubriek_view.mhl_suppliers_ID
INNER JOIN mhl_rubrieken ON mhl_suppliers_mhl_rubriek_view.mhl_rubriek_view_ID = mhl_rubrieken.id
    WHERE city_ID IN (
		SELECT id FROM mhl_cities WHERE name = 'Amsterdam')
	AND (mhl_rubrieken.name = 'drank'
    OR mhl_rubrieken.parent IN (
		SELECT id FROM mhl_rubrieken WHERE name = 'drank'))
ORDER BY mhl_rubrieken.name, mhl_suppliers.name;    