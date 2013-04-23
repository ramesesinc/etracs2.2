[getList]
SELECT objid, opener, reftype, txnno, txndate, requestedby, requestedbyaddress 
FROM certification c
WHERE c.opener = $P{opener}
${filters} 
ORDER BY txnno