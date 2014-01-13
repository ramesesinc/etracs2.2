
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
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu, f.rp 
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid 
WHERE fl.taxpayerid = $P{taxpayerid} 
  AND fl.docstate = 'CURRENT' 
  AND fl.rputype = 'land' 
  ORDER BY fl.fullpin

[getMultipleProperty]  
SELECT 
	fl.objid, fl.tdno, fl.taxpayername, fl.ownername, fl.titleno, fl.cadastrallotno, fl.surveyno, fl.barangay, fl.fullpin, 
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu, f.rp 
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid 
WHERE fl.taxpayerid = $P{taxpayerid} 
	AND fl.docstate = 'CURRENT'  
	ORDER BY fl.fullpin 

[getNoImprovements]
SELECT 
	fl.objid, fl.tdno, fl.taxpayername, fl.ownername, fl.titleno, fl.cadastrallotno, fl.surveyno, fl.barangay, fl.fullpin, 
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu, f.rp 
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid 
WHERE fl.taxpayerid = $P{taxpayerid} 
	AND fl.docstate = 'CURRENT' 
	AND fl.rputype = 'land' 
	AND NOT EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = fl.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fl.fullpin 

[getNoImprovementsTDNo]
SELECT 
	fl.objid, fl.tdno, fl.taxpayername, fl.ownername, fl.titleno, fl.cadastrallotno, fl.surveyno, fl.barangay, fl.fullpin, 
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu, f.rp 
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid
WHERE fl.tdno = $P{tdno}  
	AND fl.docstate = 'CURRENT' 
	AND fl.rputype = 'land' 
	AND NOT EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = fl.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fl.fullpin 
	
[getImprovementsTDNo]
SELECT 
	fl.objid, fl.tdno, fl.taxpayername, fl.ownername, fl.titleno, fl.cadastrallotno, fl.surveyno, fl.barangay, fl.fullpin, 
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu, f.rp 
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid
WHERE fl.tdno = $P{tdno}  
	AND fl.docstate = 'CURRENT' 
	AND fl.rputype = 'land' 
	AND EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = fl.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fl.fullpin 

[getWImproveLand]
SELECT 
	fl.objid, fl.tdno, fl.taxpayername, fl.ownername, fl.titleno, fl.cadastrallotno, fl.surveyno, fl.barangay, fl.fullpin, 
	fl.rputype, fl.totalmv, fl.totalav, fl.totalareaha, fl.totalareasqm, fl.classcode, f.rpu, f.rp 
FROM faaslist fl 
  inner join faas f on f.objid = fl.objid
WHERE fl.taxpayerid = $P{taxpayerid} 
	AND fl.docstate = 'CURRENT' 
	AND fl.rputype = 'land' 
	AND EXISTS ( 
		SELECT landfaasid FROM faaslist  
		WHERE landfaasid = fl.objid AND docstate <> 'CANCELLED' 
	) 
	ORDER BY fl.fullpin 
	
[searchByTaxpayerid]
select taxpayerid from faaslist where taxpayerid = $P{taxpayerid}  


[getFaasByTdNo]
SELECT * FROM faaslist WHERE tdno = $P{tdno}
