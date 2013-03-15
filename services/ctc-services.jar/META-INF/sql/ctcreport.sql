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