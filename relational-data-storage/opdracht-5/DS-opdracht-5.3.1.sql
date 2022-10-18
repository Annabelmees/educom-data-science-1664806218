CREATE VIEW directie
AS
SELECT mhl_contacts.supplier_ID AS ID, mhl_contacts.name AS contact, mhl_contacts.contacttype AS functie, mhl_departments.name AS department 
FROM mhl_contacts 
INNER JOIN mhl_departments ON mhl_contacts.department = mhl_departments.id
	WHERE mhl_departments.name = 'Directie' OR mhl_contacts.contacttype LIKE '%directeur%'
    ORDER BY mhl_contacts.supplier_ID