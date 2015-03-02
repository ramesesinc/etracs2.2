[getList]
SELECT 
	objid, docstate, tdno, fullpin, barangay, prevtdno, taxpayerno, 
	taxpayerid, taxpayername, taxpayeraddress, rputype, cadastrallotno, 
	administratorname, administratoraddress,
	lastyearpaid, lastqtrpaid, assessedvalue , classcode, undercompromised, faasid 
FROM rptledger 
WHERE docstate LIKE $P{docstate} 
${filters}


[getLatestItem]
SELECT * FROM rptledgeritem WHERE toyear = 0 AND parentid = $P{parentid} 

[getLedgerItemList]
SELECT ri.*, f.taxpayername, f.issuedate, f.totalmv as marketvalue
FROM rptledgeritem ri 
	left join faaslist f on f.objid = ri.faasid 
WHERE parentid = $P{parentid} ORDER BY fromyear DESC 


[getSmallestFromYear]
SELECT MIN(fromyear) AS minfromyear FROM rptledgeritem WHERE parentid = $P{parentid} AND docstate = 'APPROVED' 

[getLedgerStatus]
select objid, docstate, lastqtrpaid from rptledger where objid=$P{parentid} 


[getPayments]
SELECT 
	rp.*,  
	basic + basicint - basicdisc AS basicnet,   
	sef + sefint - sefdisc AS sefnet,  
	basic + basicint - basicdisc + sef + sefint - sefdisc AS total ,
	r.paidby, r.paidbyaddress 
FROM rptpayment rp  
	LEFT JOIN receiptlist r ON rp.receiptid = r.objid 
WHERE rp.rptledgerid = $P{ledgerid} 
	 and rp.voided = 0
ORDER BY rp.fromyear DESC, rp.fromqtr DESC   


[getPaymentsWithLguInfo]
select t.* 
from (
	SELECT
		rp.objid, rp.mode, rp.receiptno, rp.receiptdate, rp.collectorname, rp.period, rp.collectingagency, 
		rp.basic, rp.basicdisc, rp.basicint, rp.sef, rp.sefdisc, rp.sefint, 
		rp.basic + rp.basicint - rp.basicdisc AS basicnet,    
		rp.sef + rp.sefint - rp.sefdisc AS sefnet,  
		rp.basic + rp.basicint - rp.basicdisc + rp.sef + rp.sefint - rp.sefdisc AS total,
		r.paidby, r.paidbyaddress, rp.fromyear, rp.fromqtr
	FROM rptpayment rp 
		inner JOIN receiptlist r ON rp.receiptid = r.objid 
	WHERE rp.rptledgerid = $P{ledgerid}  
		and r.voided = 0 
    
	union 
	
	SELECT
		rp.objid, rp.mode, rp.receiptno, rp.receiptdate, rp.collectorname, rp.period, rp.collectingagency, 
		rp.basic, rp.basicdisc, rp.basicint, rp.sef, rp.sefdisc, rp.sefint, 
		rp.basic + rp.basicint - rp.basicdisc AS basicnet,    
		rp.sef + rp.sefint - rp.sefdisc AS sefnet,  
		rp.basic + rp.basicint - rp.basicdisc + rp.sef + rp.sefint - rp.sefdisc AS total,
		null as paidby, null as paidbyaddress, rp.fromyear, rp.fromqtr
	FROM rptpayment rp 
	WHERE rp.rptledgerid = $P{ledgerid}  
		and rp.receiptid is null  
	) t 
ORDER BY t.fromyear DESC, t.fromqtr DESC    

[getFaasInfo]
select 
	titleno, titletype,
	totalareasqm as areasqm, totalareaha as areaha
from faaslist where objid = $P{faasid}

[getAuctionInfo]
select 
	txndate as auctiondate,  
	doctypedesc as auctiontype,
	doctype 
from rptauction  
where ledgerid=$P{objid} and docstate = 'OPEN'


[updateFaasLedgerId]
UPDATE faas SET ledgerid = $P{ledgerid} WHERE objid = $P{objid}

[updateFaasListLedgerId]
UPDATE faaslist SET ledgerid = $P{ledgerid} WHERE objid = $P{objid}


[updateLastYearQtrPaid]
UPDATE rptledger SET 
	lastyearpaid = $P{lastyearpaid}, 
	lastqtrpaid = $P{lastqtrpaid} 
WHERE objid = $P{objid} 

[updateLedgerInfo]
UPDATE rptledger SET 
	lastyearpaid = $P{lastyearpaid}, 
	lastqtrpaid = $P{lastqtrpaid},
	quarterlyinstallmentpaidontime = $P{quarterlyinstallmentpaidontime}
WHERE objid = $P{objid} 


#------------------------------------
# PROVINCE LEDGER SUPPORT
#------------------------------------
[deleteProvinceRPTLedger]
DELETE FROM rptledger WHERE faasid = $P{faasid} 

[deleteProvinceRPTLedgerItem]
DELETE FROM rptledgeritem WHERE faasid = $P{faasid} 

[updateFAASLedgerReference]
UPDATE faas SET ledgerid = $P{ledgerid} WHERE objid = $P{objid} 

[updateFAASListLedgerReference]
UPDATE faaslist SET ledgerid = $P{ledgerid} WHERE objid = $P{objid} 



[getOnlinePaymentList]
SELECT  
	rpd.year, rpd.qtr,
	rli.tdno, rl.fullpin, rli.txntype, rli.assessedvalue,
	rpd.basic, rpd.basicdisc, rpd.basicint,
	rpd.sef, rpd.sefdisc, rpd.sefint,
	rp.receiptno, rp.receiptdate, rp.collectorname
FROM rptledger rl 
	INNER JOIN rptpayment rp ON rl.objid = rp.rptledgerid
	INNER JOIN rptpaymentdetail rpd ON rp.objid = rpd.rptpaymentid 
	INNER JOIN rptledgeritem rli ON rpd.rptledgeritemid = rli.objid 
WHERE rl.objid = $P{objid}
  AND rp.voided = 0
  AND rp.mode = 'ONLINE'
ORDER BY rpd.year DESC, rpd.qtr  DESC 
  
  
  