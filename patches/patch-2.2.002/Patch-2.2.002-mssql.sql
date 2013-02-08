/*=================================================================
** ETRACS DB UPDATE 
=================================================================*/
use lguname_etracs
go


/*=================================================================
** Entity Contact and ID Card 
=================================================================*/
CREATE TABLE entitycontact
(
	objid VARCHAR(50) PRIMARY KEY,
	entityid VARCHAR(50) NOT NULL,
	contacttype VARCHAR(25) NOT NULL,
	contact VARCHAR(25) NOT NULL
)
go

ALTER TABLE entitycontact 
	ADD CONSTRAINT FK_entitycontact_entity FOREIGN KEY( entityid)
	REFERENCES entity(objid)
go	
	


CREATE TABLE entityidcard
(
	objid VARCHAR(50) PRIMARY KEY,
	entityid VARCHAR(50) NOT NULL,
	cardtype VARCHAR(50) NOT NULL,
	cardno VARCHAR(25) NOT NULL,
	expiry VARCHAR(50) NULL
);

ALTER TABLE entityidcard 
	ADD CONSTRAINT FK_entityidcard_entity FOREIGN KEY( entityid)
	REFERENCES entity(objid)
go 
	
	
CREATE TABLE entityidcardtype
(
	objid VARCHAR(100) NOT NULL PRIMARY KEY
)
GO

INSERT INTO entityidcardtype ( objid ) 
	VALUES ( 'COMPANY' ),
	( 'SSS' ),
	( 'GSIS' ),
	( 'DRIVER''LICENSE' ),
	( 'POSTAL' ),
	( 'PRC' )
GO	

CREATE TABLE entitycontacttype 
(
	objid VARCHAR(100) NOT NULL PRIMARY KEY,
	isunique INT NOT NULL
)
GO

INSERT INTO entitycontacttype ( objid, isunique ) 
	VALUES ( 'TELEPHONE', 0  ),
	( 'MOBILE', 1  ),
	( 'EMAIL', 1  )
GO	
	
	

/*=================================================================
** GENERIC CERTIFICATION SUPPORT  (No Business Certification)
=================================================================*/	
CREATE TABLE certification
(
	objid VARCHAR(50) PRIMARY KEY,
	opener VARCHAR(50) NOT NULL,
	reftype VARCHAR(50) NOT NULL, 
	txnno VARCHAR(15) NOT NULL,
	txndate DATETIME NOT NULL, 
	barcode VARCHAR(50) NULL,	
	requestedbyid VARCHAR(50) NOT NULL,
	requestedby VARCHAR(150) NOT NULL,
	requestedbyaddress VARCHAR(100) NOT NULL,
	createdbyid VARCHAR(50) NOT NULL,
	createdby VARCHAR(150) NOT NULL,
	createdbytitle VARCHAR(100) NOT NULL,
	certifiedby VARCHAR(150) NOT NULL,
	certifiedbytitle VARCHAR(100) NOT NULL,
	orid VARCHAR(50) NULL,
	orno VARCHAR(25) NOT NULL,
	ordate DATETIME NOT NULL,
	oramount DECIMAL(16,2) NOT NULL,
	info TEXT NOT NULL 
)
go 


	

/*=================================================================
** Reconcile Entity
=================================================================*/		
CREATE TABLE reconciledentity
(
	entityid VARCHAR(50) NOT NULL,
	reconciledentityid VARCHAR(50) NOT NULL,
	entity TEXT NOT NULL,
	PRIMARY KEY (entityid, reconciledentityid )
)
go
	
CREATE INDEX ix_receiptlist_payorid ON receiptlist( payorid)
go


/*=================================================================
** BATCH GR SUPPORT 
=================================================================*/		
DROP INDEX rptledger.ux_rptledger_fullpin
go
	

/*=================================================================
**
**
** SYSTEM DB UPDATE 
**
**
=================================================================*/
use lguname_system
go

