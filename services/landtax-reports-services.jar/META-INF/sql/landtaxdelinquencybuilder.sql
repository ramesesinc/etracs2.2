[getDelinquentLedger]
SELECT  
	rl.objid, rl.tdno, rl.taxpayerid, rl.taxpayername, rl.taxpayeraddress, rl.assessedvalue
FROM rptledger rl 
	INNER JOIN faaslist fl ON rl.faasid = fl.objid 
WHERE rl.docstate = 'APPROVED'
  AND rl.lastyearpaid < $P{curryear} 
  AND rl.taxable = 1  
  AND rl.undercompromised = 0 
  and rl.assessedvalue > 0.0 


[cleanup]
delete from report_rptdelinquency

[createrptdelinquency]
insert into report_rptdelinquency
(
    objid, rptledgerid,  rptledgeritemid, year, qtr, barangayid, 
    basic, basicint, basicdisc, sef, sefint, sefdisc, 
    dtgenerated, billdate, billtoyear, generatedby_name, generatedby_title
)
values (       
    $P{objid},
    $P{rptledgerid},
    $P{rptledgeritemid},
    $P{year},
    $P{qtr},
    $P{barangayid},
    $P{basic},
    $P{basicint},
    $P{basicdisc},
    $P{sef},
    $P{sefint},
    $P{sefdisc},
    $P{dtgenerated},
    $P{billdate},
    $P{billtoyear},
    $P{generatedby_name},
    $P{generatedby_title}
);
