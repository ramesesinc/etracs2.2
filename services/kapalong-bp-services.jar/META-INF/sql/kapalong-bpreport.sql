[getBarangayList]
SELECT objid AS barangayid, lguname AS barangayname FROM lgu WHERE lgutype = 'BARANGAY'  ORDER BY lguname  

 
[getListOfBPPermit_ACTIVE]
SELECT  
 p.*, a.extended, a.lobs AS alobs, a.appinfos, a.taxfees, a.credits, 
 l.tin, l.organization, l.txnno AS controlno, l.txntype 
from bppermit p 
INNER JOIN bpapplication a on a.objid = p.applicationid  
INNER JOIN bpapplicationlisting l on l.objid = p.applicationid  
WHERE p.txndate between $P{fromdate} and $P{todate}
 AND l.barangayid LIKE $P{barangayid}  
 AND p.docstate='ACTIVE'
order by p.txndate    

[getListOfBPPermit_APPROVED]
SELECT  
 a.extended, a.lobs AS alobs, a.appinfos, a.taxfees, a.credits, 
 l.tin, l.organization, l.txnno AS controlno, l.txntype, 
 l.taxpayername, l.taxpayeraddress, l.txndate, l.businessaddress, l.tradename
from bpapplication a 
INNER JOIN bpapplicationlisting l on l.objid = a.objid   
WHERE l.txndate between $P{fromdate} and $P{todate} 
 AND l.barangayid LIKE $P{barangayid}  
 AND l.docstate='APPROVED'
order by l.txndate   
