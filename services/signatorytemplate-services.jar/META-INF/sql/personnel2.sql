[getList]
SELECT 
	p.objid, p.firstname, p.middlename, p.lastname, j.title AS position 
FROM personnel p 
INNER JOIN jobposition j ON j.assigneeid = p.objid 
WHERE p.lastname LIKE $P{searchtext} OR p.firstname LIKE $P{searchtext} 
ORDER BY p.lastname, p.firstname 