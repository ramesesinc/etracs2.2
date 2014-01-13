[getDelinquentLedgerAll] 
SELECT  
	objid, tdno, $P{curryear} - lastyearpaid AS yearsdelinquent,
	taxpayerid, taxpayername, taxpayeraddress   
FROM rptledger  
WHERE barangay LIKE $P{barangay}
  AND docstate = 'APPROVED'
  AND ( lastyearpaid < $P{curryear} OR (lastyearpaid = $P{curryear} AND lastqtrpaid < 4 ) )  
  AND taxable = 1  
  AND undercompromised = 0 
ORDER BY lastyearpaid desc, taxpayername, tdno  

[getDelinquentLedgerByYearDelinquent] 
SELECT  
	objid, tdno, $P{curryear} - lastyearpaid AS yearsdelinquent,
	taxpayerid, taxpayername, taxpayeraddress   
FROM rptledger  
WHERE barangay LIKE $P{barangay}
  AND docstate = 'APPROVED'
  AND ($P{curryear} - lastyearpaid) = ${noofyears}
  AND taxable = 1  
  AND undercompromised = 0 
ORDER BY lastyearpaid desc, taxpayername, tdno  

[getListAll]
select * from rptauction where docstate = $P{docstate} order by txnno 

[getListByDoctype]
select * from rptauction where doctype like $P{doctype}   and docstate = $P{docstate} order by txnno 

[getListByTdno]
select * from rptauction where tdno like $P{searchText} and docstate = $P{docstate}  order by txnno 

[getListByPin]
select * from rptauction where pin like $P{searchText} and docstate = $P{docstate} order by txnno 

[getListByTaxpayer]
select * from rptauction where taxpayername like $P{searchText} and docstate = $P{docstate} order by txnno 

[updateDocstate]
update rptauction set 
	docstate='SUPERSEDED' 
where objid = $P{parentid}  

[receive]
update rptauction set 
	receivedby=$P{receivedby}, 
	receiveddate=$P{receiveddate},
	docstate='OPEN'
where objid = $P{objid} 

[queryRPTAuctionByLedgerid]
select objid from rptauction where
	ledgerid=$P{ledgerid} and doctype in ('NOR', 'CSDRP') and docstate='OPEN' 
	
[queryRPTAuctionByTaxpayerid]
select objid from rptauction where
	taxpayerid=$P{taxpayerid} and doctype in ('NOR', 'CSDRP') and docstate='OPEN' 	
	
[getRPTAuctionObjidByLedgerid]
select objid from rptauction where ledgerid=$P{ledgerid} and docstate in ('OPEN', 'CLOSED')