[getListByDocType]
SELECT * FROM signatory 
WHERE doctype = $P{doctype} 
ORDER BY indexno   


[checkDuplicate]
SELECT * FROM signatory 
WHERE lastname = $P{lastname} AND firstname = $P{firstname} 
	AND middlename = $P{middlename} AND doctype = $P{doctype}
	

[updateIndexno]
UPDATE signatory SET indexno = $P{indexno} 
WHERE objid = $P{objid} 
