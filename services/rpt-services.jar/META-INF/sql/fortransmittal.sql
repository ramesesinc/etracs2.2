[getList]
SELECT f.*, DATEDIFF( NOW(), f.dtposted ) AS numdays 
FROM fortransmittal f

[getListByDocno]
SELECT f.*, DATEDIFF( NOW(), f.dtposted ) AS numdays 
FROM fortransmittal f 
WHERE docno LIKE $P{docno} 

[delete]
DELETE FROM fortransmittal WHERE objid = $P{objid}
