[getBPExpiryList]
SELECT * FROM bplexpiry 
WHERE iyear = $P{iyear}


[checkIfExistExpiry]
select expirydate from bplexpiry  
where iyear=$P{iyear} and iqtr=$P{iqtr} and expirytype=$P{expirytype}  

[updateExpiry]
update bplexpiry set
	expirydate=$P{expirydate} 
where  iyear=$P{iyear} and iqtr=$P{iqtr} and expirytype=$P{expirytype}   

[insertExpiry]
insert into bplexpiry 
	( iyear, iqtr, expirytype, expirydate )
values 
	( $P{iyear}, $P{iqtr}, $P{expirytype}, $P{expirydate} )
	
[deleteExpiry]
delete from bplexpiry where iyear=$P{iyear} and iqtr=$P{iqtr} and expirytype=$P{expirytype}  