/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

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
);

ALTER TABLE backtaxitem 
	ADD CONSTRAINT FK_backtaxitem_faaslist FOREIGN KEY (faasid)
	REFERENCES faaslist( objid );
	
	

/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system;

INSERT INTO sys_var( NAME, VALUE ) VALUES( 'td_autonumber_sequence_count', '5');	
