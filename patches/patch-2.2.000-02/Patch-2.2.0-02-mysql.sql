/*=================================================================
** ETRACS DB UPDATE 
=================================================================*/
use dev221_etracs;


/*=================================================================
** Entity Contact and ID Card 
=================================================================*/
CREATE TABLE entitycontact
(
	objid VARCHAR(50) PRIMARY KEY,
	entityid VARCHAR(50) NOT NULL,
	contacttype VARCHAR(25) NOT NULL,
	contact VARCHAR(25) NOT NULL
);

ALTER TABLE entitycontact 
	ADD CONSTRAINT FK_entitycontact_entity FOREIGN KEY( entityid)
	REFERENCES entity(objid);
	


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
	REFERENCES entity(objid);
	


/*=================================================================
**
**
** SYSTEM DB UPDATE 
**
**
=================================================================*/
use dev221_system;

