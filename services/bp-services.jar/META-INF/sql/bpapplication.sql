[getList] 
SELECT o.objid, o.txnno, o.tradename, o.businessaddress, o.docstate 
FROM bpapplication o 
WHERE o.docstate IN ('DRAFT','FOR_REVIEW','FOR_ASSESSMENT','FOR_APPROVAL') 
ORDER BY o.tradename

[getListByTradename] 
SELECT o.objid, o.txnno, o.tradename, o.businessaddress, o.docstate 
FROM bpapplication o 
WHERE o.docstate IN ('DRAFT','FOR_REVIEW','FOR_ASSESSMENT','FOR_APPROVAL') 
  AND o.tradename LIKE $P{tradename} 
ORDER BY o.tradename 

[getListByTxnno] 
SELECT o.objid, o.txnno, o.tradename, o.businessaddress, o.docstate 
FROM bpapplication o 
WHERE o.docstate IN ('DRAFT','FOR_REVIEW','FOR_ASSESSMENT','FOR_APPROVAL') 
  AND o.txnno LIKE $P{txnno} 
ORDER BY o.tradename

[getBusinessForRENEW] 
SELECT b.objid, b.tradename, b.businessaddress, bpa.info FROM business b 
INNER JOIN bpapplication bpa ON bpa.businessid = b.objid 
WHERE b.taxpayerid = $P{taxpayerid} 
AND   b.docstate = 'EXPIRED' 

[getBusinessForRETIRE] 
SELECT b.objid, bpa.txnno, b.yearstated, bpa.info FROM business b 
INNER JOIN bpapplication bpa ON bpa.businessid = b.objid 
WHERE b.taxpayerid = $P{taxpayerid} 
AND   b.docstate NOT IN ('RETIRE') 

[getBusinessForRETIRELINE] 
SELECT b.objid, bpa.txnno, b.yearstated, bpa.info FROM business b 
INNER JOIN bpapplication bpa ON bpa.businessid = b.objid 
WHERE b.taxpayerid = $P{taxpayerid} 

[getBusinessForADDLOB] 
SELECT b.objid, b.tradename, b.businessaddress FROM business b 
WHERE b.taxpayerid = $P{taxpayerid} 
AND   b.docstate = 'ACTIVE' 

[getApplicationByBusinessId] 
SELECT bpa.* FROM business b  
INNER JOIN bpapplication bpa ON bpa.objid = b.applicationid 
WHERE b.objid = $P{objid} 

[getApplicationByParentId] 
SELECT 
	objid,schemaname,schemaversion,docstate,businessid,info,txnmode,txntype,taxpayerid,tradename,
	businessaddress,txndate,txnno,iyear,parentid,extended,barcode,lobs,appinfos,taxfees
FROM bpapplication  
WHERE parentid = $P{parentid} 
	AND docstate='LATE_RENEWAL'

[deleteReferenceApplication] 
DELETE FROM bpapplication 
WHERE parentid = $P{parentid}  

[deleteLateRenewalApplication]
DELETE FROM bpapplication 
WHERE parentid = $P{parentid}  and docstate='LATE_RENEWAL'

[updateApplicationListingDocstate] 
UPDATE bpapplicationlisting  
SET docstate = $P{docstate} 
WHERE objid = $P{objid} 


[getCreditsRefno] 
SELECT 
	c.refdate, c.refno, SUM(c.amount) AS amount
FROM bpreceivable r
	INNER JOIN bpreceivablecredit c ON c.bpreceivableid = r.objid 	
WHERE r.applicationid=$P{applicationid}
GROUP BY refdate, refno 
ORDER BY c.refdate 

[getBPGrossCapital]
select * from bpappinfolisting 
where lobid=$P{lobid} 
	and varid =$P{varid} 
	and applicationid=$P{applicationid} 