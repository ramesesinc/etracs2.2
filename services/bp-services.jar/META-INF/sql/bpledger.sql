[getBusinessLedgers]
SELECT 
	iyear AS appyear, 
	applicationid AS applicationid, 
	appno AS appno, 
	applicationtype as applicationtype, 
	SUM( amount ) AS amount, 
	SUM( amtpaid ) AS amtpaid 
FROM bpreceivable  
WHERE businessid = $P{businessid} 
GROUP BY iyear, applicationid 
ORDER BY iyear DESC, appno DESC


[getBPReceivablesByAppId]
SELECT 
	businessid AS businessid, 
	applicationid AS applicationid, 
	lobid AS lobid, 
	lobname AS lobname, 
	acctid AS acctid, 
	accttitle AS accttitle, 
	SUM( amount ) AS amount, 
	SUM( amtpaid ) AS amtpaid 
FROM bpreceivable 
WHERE applicationid = $P{appid} 
GROUP BY businessid, applicationid, lobid, lobname, acctid, accttitle  
ORDER BY lobname, accttitle

[getBPReceivableCredits]
SELECT bprc.* FROM bpreceivablecredit bprc, bpreceivable bpr  
WHERE bpr.objid = bprc.bpreceivableid 
AND bpr.applicationid = $P{appid} 
AND bpr.lobid = $P{lobid} 
AND bpr.acctid = $P{acctid} 
ORDER BY bprc.refdate

[getBPReceivableCreditsForNullLOB]
SELECT bprc.* FROM bpreceivablecredit bprc, bpreceivable bpr  
WHERE bpr.objid = bprc.bpreceivableid 
AND bpr.applicationid = $P{appid} 
AND bpr.lobid IS NULL 
AND bpr.acctid = $P{acctid} 
ORDER BY bprc.refdate

[getBPLastPaymentInfo]
SELECT 
	MIN( iyear ) AS lastyrpaid, 
	MIN( iqtr ) AS lastqtrpaid 
FROM bpreceivable 
WHERE businessid = $P{businessid} 
AND NOT amount = amtpaid

[getBPReceivablesByBusinessId]
SELECT 
	objid AS objid, 
	appno AS appno, 
	iyear AS iyear, 
	iqtr AS iqtr, 
	lobname AS lobname, 
	acctid AS acctid, 
	accttitle AS accttitle, 
	systype AS systype, 
	(amount - amtpaid) AS amount, 
	0.0 AS paymentAmt, 
	0.0 AS surcharge, 
	0.0 AS interest, 
	0.0 AS discount 
FROM bpreceivable 
WHERE businessid = $P{businessid} 
AND NOT amount = amtpaid 
ORDER BY appno DESC, iyear DESC, lobname, accttitle, iqtr DESC

[updateReceivableWithCapturePayment]
UPDATE bpreceivable 
SET amtpaid = ( amtpaid + $P{amtpaid} ) 
WHERE objid = $P{receivableid}

[getUnpaidReceivables]
select 
	objid, businessid, applicationid, applicationtype, appno, iyear,           
	lobid, lobname, acctid, accttitle, amtpaid, iqtr, acctno,
	iqtr as `qtr`, iyear as `year`, (amount - amtpaid ) as amount 
from bpreceivable
where applicationid=$P{applicationid} 
	and amount > amtpaid 
order by iyear, iqtr, lobname 
	
[getUnpaidReceivablesByBusinessid]
select 
	objid, businessid, applicationid, applicationtype, appno, iyear,           
	lobid, lobname, acctid, accttitle, amtpaid, iqtr, acctno,
	iqtr as `qtr`, iyear as `year`, (amount - amtpaid ) as amount 
from bpreceivable
where businessid=$P{businessid} 
	and amount > amtpaid 	
order by iyear, iqtr, lobname 
	
[getReceivablesByApplicationId]
select *, iqtr as `qtr`, iyear as `year` from bpreceivable
where applicationid=$P{applicationid} 
order by iqtr, lobname 

[getReceivableCredits]
select *, (amount + surcharge + interest - discount) as totalamount  from bpreceivablecredit 
where bpreceivableid=$P{receivableid}

[getReceivableCreditsByApplicationid]
select 
	bcr.*, 
	(bcr.amount + bcr.surcharge + bcr.interest - bcr.discount) as totalamount 
from bpreceivablecredit bcr
 inner join bpreceivable bc on bc.objid = bcr.bpreceivableid 
where bc.applicationid=$P{applicationid}

[deleteReceivableCredits]
delete from bpreceivablecredit where bpreceivableid=$P{bpreceivableid} and refno=$P{refno} 

[updateBPReceivableAmtpaid]
update bpreceivable set amtpaid=$P{amtpaid} where objid=$P{objid}

