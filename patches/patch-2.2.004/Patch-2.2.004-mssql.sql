/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go

CREATE TABLE backtaxitem
(
	objid VARCHAR(50) NOT NULL PRIMARY KEY,
	faasid VARCHAR(50) NOT NULL,
	ry INT NOT NULL,
	tdno VARCHAR(25) NOT NULL,
	bmv DECIMAL(16,2) NOT NULL,
	mv DECIMAL(16,2) NOT NULL,
	av DECIMAL(16,2) NOT NULL,
	effectivityyear INT NOT NULL,
	effectivityqtr INT NOT NULL,
	taxable INT NOT NULL
)
go

ALTER TABLE backtaxitem 
	ADD CONSTRAINT FK_backtaxitem_faaslist FOREIGN KEY (faasid)
	REFERENCES faaslist( objid )
go	
	


/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go
