[getBrgyRPUs]
SELECT 
    MIN(barangay) AS barangayname, taxability, 
    SUM(landrpu) AS landrpu, SUM(bldgrpu) AS bldgrpu, 
    SUM(machrpu) AS machrpu, SUM(icount) AS totalrpu 
FROM ( 
	SELECT 
		barangayid, barangay, 
		CASE  WHEN totalav=0.0 THEN 'ZERO'
		      WHEN taxable = 1 THEN 'TAXABLE'
		ELSE 'EXEMPT' END AS taxability,
		CASE WHEN rputype='land' THEN 1 ELSE 0 END AS landrpu,
		CASE WHEN rputype='bldg' THEN 1 ELSE 0 END AS bldgrpu,
		CASE WHEN rputype='mach' THEN 1 ELSE 0 END AS machrpu, 
		1 AS icount 
	FROM faaslist
	WHERE barangayid like $P{barangayid}  and 
		issuedate <= $P{asofdate} and
		docstate ='CURRENT' AND 
		ry = $P{ry}
   ) t 
  GROUP BY barangayid, taxability
  ORDER BY barangayname, taxability
  
  [getBarangayList]
  SELECT objid AS barangayid, lguname AS barangayname FROM lgu WHERE lgutype = 'BARANGAY'  ORDER BY lguname