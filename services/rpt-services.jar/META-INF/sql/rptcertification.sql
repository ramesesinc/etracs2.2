
[getList]
SELECT 
	* 
FROM rptcertification 
ORDER BY docno

[searchByTaxpayerName]
SELECT 
	* 
FROM rptcertification 
WHERE taxpayername LIKE $P{taxpayername} 
ORDER BY docno

[searchByReqBy]
SELECT 
	* 
FROM rptcertification 
WHERE  requestedby LIKE $P{requestedby}
ORDER BY docno

[getDataById]
SELECT 
	*
FROM rptcertification 
WHERE objid = $P{objid} 
ORDER BY docno 

[getLandHolding]
SELECT 
	fl.objid, fl.tdno, fl.taxpayername, fl.ownername, fl.titleno, fl.cadastrallotno, fl.surveyno, fl.barangay, fl.fullpin, 
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu  
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid 
WHERE fl.taxpayerid = $P{taxpayerid} 
  AND fl.docstate = 'CURRENT' 
  AND fl.rputype = 'land' 
  ORDER BY fl.fullpin

[getMultipleProperty]  
SELECT	
	objid, tdno, taxpayername, ownername, titleno, cadastrallotno, surveyno, barangay, fullpin, 
	rputype, totalmv, totalav, totalareaha, totalareasqm, classcode 
FROM faaslist 
WHERE taxpayerid = $P{taxpayerid} 
	AND docstate = 'CURRENT'  
	ORDER BY fullpin 

[getNoImprovements]
SELECT 
	objid, tdno, taxpayername, ownername, titleno, cadastrallotno, surveyno, barangay, fullpin, 
	rputype, totalmv, totalav, totalareaha, totalareasqm, classcode 
FROM faaslist f 
WHERE taxpayerid = $P{taxpayerid} 
	AND docstate = 'CURRENT' 
	AND rputype = 'land' 
	AND NOT EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = f.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fullpin 

[getNoImprovementsTDNo]
SELECT 
	objid, tdno, taxpayername, ownername, titleno, cadastrallotno, surveyno, barangay, fullpin, 
	rputype, totalmv, totalav, totalareaha, totalareasqm, classcode 
FROM faaslist f  
WHERE tdno = $P{tdno}  
	AND docstate = 'CURRENT' 
	AND rputype = 'land' 
	AND NOT EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = f.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fullpin 
	
[getImprovementsTDNo]
SELECT 
	objid, tdno, taxpayername, ownername, titleno, cadastrallotno, surveyno, barangay, fullpin, 
	rputype, totalmv, totalav, totalareaha, totalareasqm, classcode 
FROM faaslist f  
WHERE tdno = $P{tdno}  
	AND docstate = 'CURRENT' 
	AND rputype = 'land' 
	AND EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = f.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fullpin 

[getWImproveLand]
SELECT 
	objid, tdno, taxpayername, ownername, titleno, cadastrallotno, surveyno, barangay, fullpin, 
	rputype, totalmv, totalav, totalareaha, totalareasqm, classcode 
FROM faaslist f 
WHERE taxpayerid = $P{taxpayerid} 
	AND docstate = 'CURRENT' 
	AND rputype = 'land' 
	AND EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = f.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fullpin 
	
[searchByTaxpayerid]
select taxpayerid from faaslist where taxpayerid = $P{taxpayerid}  


[getFaasByTdNo]
SELECT * FROM faaslist WHERE tdno = $P{tdno}
