/*=================================================================
** ETRACS DB UPDATE 
=================================================================*/
use dev221_etracs
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
	

/*=================================================================
**
**
** SYSTEM DB UPDATE 
**
**
=================================================================*/
use dev221_system
go

