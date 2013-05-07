[getImprovementInfo]
SELECT 
	objid as prevfaasid, rputype, fullpin as pin, tdno as prevtdno, taxpayername, 
	taxpayeraddress , cadastrallotno, totalareasqm as areasqm
FROM faaslist WHERE landfaasid in ( ${landfaasids} )
	AND docstate <> 'CANCELLED' AND rputype <> 'land' 
 
[getSameFaasPin]
SELECT 
	objid as faasid, docstate, rputype, fullpin as pin, tdno, taxpayername, 
	taxpayeraddress, cadastrallotno, totalareasqm as areasqm 
FROM faaslist WHERE fullpin = $P{pin} and objid <> $P{prevfaasid} 
	AND docstate <> 'CANCELLED' AND rputype = 'land' 

[hasOtherClaims]
SELECT objid , docstate, tdno  
FROM faaslist WHERE fullpin = $P{pin} and objid <> $P{prevfaasid} 
	AND docstate <> 'CANCELLED' AND rputype = 'land' 	
	
[checkAffectedRPU]
select ojbid from faaslist FROM faaslist 
WHERE landfaasid in ( ${landfaasids} )
	AND docstate not in ('CANCELLED', 'CURRENT')  
	AND rputype <> 'land'   
	
[getList]
SELECT * FROM mcsettlement ORDER BY docno  

[getListByPrevTdno]
SELECT * FROM mcsettlement WHERE prevtdno = $P{prevtdno} ORDER BY docno 

[getListByNewTdno]
SELECT * FROM mcsettlement WHERE newtdno = $P{newtdno} ORDER BY docno

[getListByPIN]
SELECT * FROM mcsettlement WHERE pin = $P{pin} ORDER BY docno 

[getListByCadastral]
SELECT * FROM mcsettlement WHERE cadastrallotno = $P{cadastrallotno} ORDER BY cadastrallotno 

[getListByTaxpayer]
SELECT * FROM mcsettlement WHERE taxpayername LIKE $P{taxpayername} ORDER BY taxpayername 

[getListByDocno]
SELECT * FROM mcsettlement WHERE docno LIKE $P{docno} ORDER BY docno  	

[deleteTxnReference]
delete from txnreference where refid=$P{refid}

[deleteAffectedRpus]
delete from mcsettlement_affectedrpu where mcsettlementid=$P{mcsettlementid}

[deleteOtherClaims]
delete from mcsettlement_otherclaims where mcsettlementid=$P{mcsettlementid} 

[getAffectedRPUS] 
select * from mcsettlement_affectedrpu where mcsettlementid=$P{mcsettlementid} 

[getOtherClaims]
select * from mcsettlement_otherclaims where mcsettlementid=$P{mcsettlementid} 

[getImprovementStates] 
SELECT f.tdno, f.docstate  
FROM faaslist f, mcsettlement_affectedrpu r  
WHERE f.objid = r.prevfaasid  
  AND f.docstate NOT IN ('CURRENT', 'CANCELLED')  
  AND r.mcsettlementid = $P{mcsettlementid} 

[getAffectedRpuUnapprovedLedgers]  
SELECT rl.tdno, rl.docstate 
FROM mcsettlement_affectedrpu r, rptledger rl 
WHERE r.prevfaasid = rl.faasid  
  AND rl.docstate NOT IN ('APPROVED')  
  AND r.mcsettlementid = $P{mcsettlementid} 
  
[getOtherClaimsUnapprovedLedgers]  
SELECT rl.tdno, rl.docstate 
FROM mcsettlement_otherclaims r, rptledger rl 
WHERE r.faasid = rl.faasid  
  AND rl.docstate NOT IN ('APPROVED')  
  AND r.mcsettlementid = $P{mcsettlementid}   

[checkDuplicateTDNo]
SELECT objid, tdno FROM faaslist WHERE tdno = $P{tdno} AND objid <> $P{objid} 

[checkMCSettlementLedger]
select objid from rptledger where faasid = $P{prevfaasid} and docstate <> 'APPROVED' 