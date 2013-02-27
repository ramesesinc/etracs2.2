[getList]
SELECT * 
FROM rpttransmittal 
ORDER BY txnno DESC
 
[getItemsForTransmittal]
SELECT f.*, DATEDIFF( d, GETDATE(), f.dtposted ) AS numdays 
FROM fortransmittal f
WHERE f.module = 'rpt'  


[getTransmittalItems]
SELECT ri.*, DATEDIFF( d, GETDATE(), ri.dtposted ) AS numdays 
FROM rpttransmittal_item ri
WHERE ri.transmittalid = $P{transmittalid}





[getTransmittedFaasIds]
SELECT fl.objid 
FROM faaslist fl 
	INNER JOIN rpttransmittal_item ri ON fl.objid = ri.docid 
WHERE ri.transmittalid = $P{transmittalid} 

UNION 

SELECT fl.objid 
FROM rpttransmittal_item ri
	INNER JOIN subdivision s ON ri.docid = s.objid 
	INNER JOIN subdivisionland sl ON s.objid = sl.subdivisionid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid} 

UNION 

SELECT fl.objid 
FROM rpttransmittal_item ri
	INNER JOIN subdivision s ON ri.docid = s.objid 
	INNER JOIN subdivisionaffectedrpu sl ON s.objid = sl.subdivisionid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid} 	

UNION 

SELECT fl.objid 
FROM rpttransmittal_item ri
	INNER JOIN consolidation s ON ri.docid = s.objid 
	INNER JOIN consolidationaffectedrpu sl ON s.objid = sl.consolidationid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid} 	

UNION 

SELECT fl.objid 
FROM rpttransmittal_item ri
	INNER JOIN consolidation s ON ri.docid = s.objid 
	INNER JOIN faaslist fl ON s.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid}




[getTransmittedFaasList]
SELECT fl.* 
FROM faaslist fl 
	INNER JOIN rpttransmittal_item ri ON fl.objid = ri.docid 
WHERE ri.transmittalid = $P{transmittalid} 

UNION 

SELECT fl.*
FROM rpttransmittal_item ri
	INNER JOIN subdivision s ON ri.docid = s.objid 
	INNER JOIN subdivisionland sl ON s.objid = sl.subdivisionid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid} 

UNION 

SELECT fl.*
FROM rpttransmittal_item ri
	INNER JOIN subdivision s ON ri.docid = s.objid 
	INNER JOIN subdivisionaffectedrpu sl ON s.objid = sl.subdivisionid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid} 	

UNION 

SELECT fl.* 
FROM rpttransmittal_item ri
	INNER JOIN consolidation s ON ri.docid = s.objid 
	INNER JOIN consolidationaffectedrpu sl ON s.objid = sl.consolidationid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid} 	

UNION 

SELECT fl.*
FROM rpttransmittal_item ri
	INNER JOIN consolidation s ON ri.docid = s.objid 
	INNER JOIN faaslist fl ON s.newfaasid = fl.objid 
WHERE ri.transmittalid = $P{transmittalid}



[getTransmittedLedgers]  
SELECT rl.* 
FROM rptledger rl 
	INNER JOIN faaslist fl ON rl.faasid = fl.objid 
	INNER JOIN rpttransmittal_item ti ON fl.objid = ti.docid 
WHERE ti.objid = $P{transmittalid}	 

[getTransmittedLedgerItems]  
SELECT rli.* 
FROM rptledgeritem rli 
	INNER JOIN faaslist fl ON rli.faasid = fl.objid 
	INNER JOIN rpttransmittal_item ti ON fl.objid = ti.docid 
WHERE ti.objid = $P{transmittalid}	 

[getTransmittedEntities]
SELECT e.* 
FROM faaslist fl 
	INNER JOIN rpttransmittal_item ri ON fl.objid = ri.docid 
	INNER JOIN entity e ON fl.taxpayerid = e.objid 
WHERE ri.transmittalid = $P{transmittalid} 

UNION 

SELECT e.*
FROM rpttransmittal_item ri
	INNER JOIN subdivision s ON ri.docid = s.objid 
	INNER JOIN subdivisionland sl ON s.objid = sl.subdivisionid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
	INNER JOIN entity e ON fl.taxpayerid = e.objid 
WHERE ri.transmittalid = $P{transmittalid} 

UNION 

SELECT e.*
FROM rpttransmittal_item ri
	INNER JOIN subdivision s ON ri.docid = s.objid 
	INNER JOIN subdivisionaffectedrpu sl ON s.objid = sl.subdivisionid 
	INNER JOIN faaslist fl ON sl.newfaasid = fl.objid 
	INNER JOIN entity e ON fl.taxpayerid = e.objid 
WHERE ri.transmittalid = $P{transmittalid} 	 


[getTransmittedSubdivisions]
SELECT s.* 
FROM rpttransmittal_item ri 
	INNER JOIN subdivision s ON ri.docid = s.objid
WHERE ri.transmittalid = $P{transmittalid}
 AND ri.doctype = 'subdivision'
 AND ri.module = 'rpt' 

[getTransmittedSubdivisionLands]
SELECT sl.* 
FROM rpttransmittal_item ri 
	INNER JOIN subdivision s ON ri.docid = s.objid
	INNER JOIN subdivisionland sl ON s.objid = sl.subdivisionid
WHERE ri.transmittalid = $P{transmittalid}
 AND ri.doctype = 'subdivision'
 AND ri.module = 'rpt' 


[getTransmittedSubdivisionAffectedRpus]
SELECT sa.* 
FROM rpttransmittal_item ri 
	INNER JOIN subdivision s ON ri.docid = s.objid
	INNER JOIN subdivisionaffectedrpu sa ON s.objid = sa.subdivisionid
WHERE ri.transmittalid = $P{transmittalid}
 AND ri.doctype = 'subdivision'
 AND ri.module = 'rpt' 



  
 
[getTransmittedConsolidations] 
SELECT c.* 
FROM rpttransmittal_item ri 
	INNER JOIN consolidation c ON ri.docid = c.objid
WHERE ri.transmittalid = $P{transmittalid}
 AND ri.doctype = 'consolidation'
 AND ri.module = 'rpt' 
 
[getTransmittedConsolidationLands] 
SELECT cl.* 
FROM rpttransmittal_item ri 
	INNER JOIN consolidation c ON ri.docid = c.objid
	INNER JOIN consolidationland cl ON c.objid = cl.consolidationid
WHERE ri.transmittalid = $P{transmittalid}
 AND ri.doctype = 'consolidation'
 AND ri.module = 'rpt' 


 [getTransmittedConsolidationAffectedRpus]
 SELECT ca.* 
FROM rpttransmittal_item ri 
	INNER JOIN consolidation c ON ri.docid = c.objid
	INNER JOIN consolidationaffectedrpu ca ON c.objid = ca.consolidationid
WHERE ri.transmittalid = $P{transmittalid}
 AND ri.doctype = 'consolidation'
 AND ri.module = 'rpt' 
 
 
 

[getImportedTransmittalList]
SELECT * 
FROM rpttransmittal_import 
ORDER BY transmittalno DESC 

[getImportedTransmittalItems]
SELECT  *
FROM rpttransmittal_import_item ti 
WHERE ti.objid = $P{transmittalid} 

[getImportTransmittalById]
SELECT objid 
FROM rpttransmittal_import 
WHERE objid = $P{objid}

[getImportedFaasList]
SELECT  fl.*
FROM faaslist fl
	INNER JOIN rpttransmittal_import_item ti ON fl.objid = ti.docid 
WHERE ti.objid = $P{transmittalid} 







[getFaasById]
SELECT objid FROM faas WHERE objid = $P{objid} 

[getLedgerById]
SELECT objid FROM rptledger WHERE objid = $P{objid} 

[getLedgerItemById]
SELECT objid FROM rptledgeritem WHERE objid = $P{objid} 

[getEntityById]
SELECT objid FROM entity WHERE objid = $P{objid} 


[insertPin]
INSERT INTO pin ( pin, claimno, docstate, ry, rpid, rputype ) 
VALUES( $P{pin}, $P{claimno}, $P{docstate}, $P{ry}, $P{rpid}, $P{rputype}  )


[getPin]
SELECT * FROM pin 
WHERE pin = $P{pin} AND claimno = $P{claimno} AND ry = $P{ry} 


