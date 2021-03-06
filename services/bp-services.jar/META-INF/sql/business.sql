[getList]
SELECT a.txnno, a.iyear, b.* FROM business b 
INNER JOIN bpapplication a ON a.businessid = b.objid
WHERE b.docstate IN ( 'ACTIVE', 'FOR_RELEASE' ) 
ORDER BY a.iyear DESC, b.tradename
 
[getListByTradename]
SELECT a.txnno, a.iyear,  b.* FROM business b 
INNER JOIN bpapplication a ON a.businessid = b.objid 
WHERE b.tradename LIKE $P{tradename} 
AND b.docstate = 'ACTIVE' 
ORDER BY a.iyear DESC, b.tradename

[getListByOwnername]
SELECT a.txnno, a.iyear,  b.* FROM business b 
INNER JOIN bpapplication a ON a.businessid = b.objid 
WHERE b.taxpayername LIKE $P{taxpayername} 
AND b.docstate = 'ACTIVE' 
ORDER BY a.iyear DESC, b.tradename

[getList1]
SELECT a.txnno, a.iyear,  e.entityno as taxpayerno, b.* FROM business b 
INNER JOIN bpapplication a ON a.objid = b.applicationid 
INNER JOIN entity e ON e.objid = b.taxpayerid 
WHERE b.docstate IN ( 'ACTIVE', 'FOR_RELEASE' ) 
ORDER BY a.iyear DESC, b.tradename

[getListByTradename1]
SELECT a.txnno, a.iyear,  e.entityno as taxpayerno, b.* FROM business b 
INNER JOIN bpapplication a ON a.objid = b.applicationid 
INNER JOIN entity e ON e.objid = b.taxpayerid 
WHERE b.tradename LIKE $P{tradename} 
AND b.docstate = 'ACTIVE' 
ORDER BY a.iyear DESC, b.tradename

[getListByOwnername1]
SELECT a.txnno, a.iyear,  e.entityno as taxpayerno, b.* FROM business b 
INNER JOIN bpapplication a ON a.objid = b.applicationid 
INNER JOIN entity e ON e.objid = b.taxpayerid 
WHERE b.taxpayername LIKE  $P{taxpayername}
AND b.docstate = 'ACTIVE' 
ORDER BY a.iyear DESC, b.tradename

[getListByTaxpayerid]
SELECT b.*, p.plateno 
FROM business b  
	INNER JOIN bpapplicationlisting bl ON b.applicationid = bl.objid 
	left join bppermit p on p.applicationid = bl.objid   
WHERE b.taxpayerid = $P{taxpayerid}  
  AND b.applicationid = $P{applicationid} 
  AND b.docstate in ('ACTIVE', 'EXPIRED', 'RETIRED')  
  AND bl.barangayid LIKE $P{barangayid}   
ORDER BY b.tradename, b.taxpayername 


[getAppByAppId]
SELECT objid FROM bpapplicationlisting 
WHERE objid = $P{applicationid} 
 AND parentid IS NOT NULL 
 AND fullypaid = 1  

[getBusinessByTaxpayerIdTrade]
SELECT b.*  
FROM business b  
	INNER JOIN bpapplicationlisting bl ON b.applicationid = bl.objid   
WHERE b.taxpayerid = $P{taxpayerid}  
  AND b.tradename = $P{tradename}   
  AND bl.barangayid LIKE $P{barangayid} 
  AND b.docstate in ('ACTIVE', 'EXPIRED')      
ORDER BY b.tradename, b.taxpayername 

[getApplicationsByBusinessId]  
SELECT * FROM bpapplication 
WHERE businessid = $P{businessid} 
AND docstate IN ( 'APPROVED', 'ACTIVE', 'PERMIT_PENDING', 'EXPIRED', 'LATE_RENEWAL' ) 
ORDER BY txnno 

[getApplicationsByBusinessIdNotActive]
SELECT * FROM bpapplication 
WHERE businessid = $P{businessid} 
AND docstate NOT IN ( 'APPROVED', 'ACTIVE', 'PERMIT_PENDING', 'EXPIRED', 'RENEWED' ) 
ORDER BY txnno 

[getApplicationListByBusinessId] 
SELECT b.* FROM bpapplication b 
INNER JOIN bpapplicationlisting l ON l.objid = b.objid 
WHERE b.businessid = $P{businessid} 
ORDER BY b.iyear DESC 

[updateAppFullypaid]  
UPDATE bpapplicationlisting   
SET fullypaid = 1   
WHERE businessid = $P{businessid}   

[updateAppListStatToRenewed] 
UPDATE bpapplicationlisting 
SET docstate = 'RENEWED' 
WHERE businessid = $P{businessid} 

[getBPApplicationById]
SELECT 
 * 
FROM bpapplication  
WHERE objid = $P{objid} 

[getBPPermitByBusinessid]
select * from bppermit 
where businessid=$P{businessid}

