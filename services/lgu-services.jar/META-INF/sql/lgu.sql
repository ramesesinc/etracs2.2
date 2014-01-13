[get-host]
SELECT * FROM lgu WHERE lgutype = $P{lgutype}


[getList]
SELECT * FROM lgu

[getList]
SELECT * FROM lgu WHERE parentid IS NULL 

[getParent]
SELECT * FROM lgu WHERE parentid IS NULL 

[getLgusByType]
SELECT l.*, o.objid as orgunit  FROM lgu l 
LEFT JOIN orgunit o ON o.refid = l.objid 
WHERE lgutype = $P{lgutype} 

[getLgusByParent]
SELECT l.*, o.objid as orgunit  FROM lgu l 
LEFT JOIN orgunit o ON o.refid = l.objid 
WHERE l.parentid = $P{parentid} 



[getBarangays]
SELECT objid, lguname AS name FROM lgu WHERE lgutype  = 'BARANGAY' ORDER BY objid  

[getBarangayListByName]
SELECT objid, lguname AS name FROM lgu WHERE lgutype  = 'BARANGAY' AND lguname LIKE $P{name} ORDER BY objid  


[lookupMunicipality]
SELECT objid, lguname, pin FROM lgu 
WHERE lgutype = 'MUNICIPALITY' AND lguname LIKE $P{lguname} 
ORDER BY lguname 

[deleteBarangayByParentId]
DELETE FROM lgu WHERE lgutype = 'BARANGAY' AND parentid = $P{parentid} 


[getProvinceId]
SELECT objid FROM lgu WHERE lgutype = 'PROVINCE'


[getCityMunicipalityList]
SELECT * FROM lgu 
WHERE lgutype IN ('CITY', 'MUNICIPALITY') 
ORDER BY lguname 

[getMuniDistrictList]
SELECT * FROM lgu 
WHERE lgutype IN ('DISTRICT', 'MUNICIPALITY') 
ORDER BY lguname 


[getBarangayListByParentId]
SELECT * FROM lgu 
WHERE parentid = $P{parentid} 
  AND lgutype = 'BARANGAY' 
ORDER BY lguname



