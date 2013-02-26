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
	
	
	
/*=========	RECEIPT DISCOUNT ============== */	
CREATE TABLE discounttype
(
	objid VARCHAR(50) NOT NULL PRIMARY KEY,
	discounttype VARCHAR(50) NOT NULL,
	rate decimal(16,2) NOT NULL
)
go

ALTER TABLE receiptitem ADD discount DECIMAL(16,2)
GO
ALTER TABLE receiptitem ADD discounttypeid VARCHAR(100)
GO
UPDATE receiptitem SET discount = 0
GO	


ALTER TABLE receiptitem 
	ADD CONSTRAINT FK_receiptitem_discounttype FOREIGN KEY (discounttypeid )
	REFERENCES discounttype( objid )
go 	


ALTER TABLE incomeaccount ADD allowdiscount INT
GO

UPDATE incomeaccount SET allowdiscount = 0 WHERE allowdiscount IS NULL
GO



/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

INSERT INTO sys_var( NAME, VALUE ) VALUES( 'td_autonumber_sequence_count', '5')
go

INSERT INTO sys_var( NAME, VALUE ) VALUES( 'allow_general_collection_discount', '0')
go

