[getAbstractCTCIndividual]
SELECT
	rem.txnno,
	rem.txndate,
	rl.serialno AS orno,
	CASE WHEN rl.voided = 0 THEN rl.txndate ELSE NULL END AS ordate,
	CASE WHEN rl.voided = 0 THEN rl.paidby ELSE '*** VOIDED ***' END AS paidby,
	CASE WHEN rl.voided = 0 THEN rl.amount ELSE 0.0 END AS amount,
	rl.collectorname,
	rl.collectortitle,
	rem.liquidatingofficername,
	rem.liquidatingofficertitle,
	extended,
	rl.voided
FROM receiptlist rl
	INNER JOIN remittance rem ON rl.remittanceid = rem.objid
WHERE rem.objid = $P{objid}
  AND rl.afid = '0016' 

  
[brgyshare_info]
SELECT  r.objid, r.extended 
FROM liquidation l  
	INNER JOIN remittance rem ON l.objid = rem.liquidationid  
	INNER JOIN receiptlist r ON rem.objid = r.remittanceid  
WHERE l.iyear = $P{year}
  AND l.imonth = $P{month}
  and r.doctype='CTCIB'
  AND r.voided = 0  
  
[brgyshare_insert]   
insert into ctcbrgyshare  
	(objid, year, month, barangay, amount, interest, shareamount, shareinterest)
values
	($P{objid}, $P{year}, $P{month}, $P{barangay}, $P{amount}, $P{interest}, $P{shareamount}, $P{shareinterest} )
 
[brgyshare_list]  
select
	 barangay, sum(amount) as amount, sum(interest) as interest, 
	 sum(shareamount) as shareamount, sum(shareinterest) as shareinterest 
from ctcbrgyshare
where year = $P{year} and month=$P{month}
group by barangay 
  
  
  
