[getBPExpiryList]
SELECT * FROM bplexpiry 
WHERE iyear = (SELECT MAX(iyear) FROM bplexpiry) 


[updateExpiry]
UPDATE bplexpiry SET expirydate = $P{expirydate} 
WHERE iqtr = $P{iqtr} AND iyear = $P{iyear} AND expirytype = $P{expirytype} 