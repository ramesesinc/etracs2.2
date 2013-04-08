[getList]
SELECT * 
FROM cancelfaas o
WHERE 1=1
${filters} 
ORDER BY tdno  

[getFAASInfo]
SELECT objid, info FROM faas WHERE objid = $P{objid} 

[getState]
SELECT objid, docstate FROM faas WHERE objid = $P{objid} 

[getUncancelledLandImprovements]
SELECT objid, tdno, docstate, rputype FROM faaslist WHERE landfaasid = $P{landfaasid} AND rputype <> 'land' AND docstate <> 'CANCELLED' 


[cancelLedger]
UPDATE rptledger SET docstate = 'CANCELLED' 
WHERE faasid = $P{faasid} 
  AND ((lastyearpaid = $P{currentyear} AND lastqtrpaid = 4 ) or lastyearpaid > $P{currentyear} or taxable = 0)

[cancelFAASList]
UPDATE faaslist SET 
	docstate = 'CANCELLED', 
	cancelreason = $P{cancelreason}, 
	canceldate = $P{canceldate}, 
	cancelledbytdnos = $P{cancelledbytdnos}
WHERE objid = $P{objid} 

[cancelFAAS]
UPDATE faas SET 
	docstate = 'CANCELLED', 
	info = $P{info} 
WHERE objid = $P{objid} 