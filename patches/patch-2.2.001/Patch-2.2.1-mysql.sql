/*---------------------------------------------------------------------------------
**
** GENERAL REVISION 
**
--------------------------------------------------------------------------------- */

USE dev221_etracs;

ALTER TABLE pin DROP PRIMARY KEY;

ALTER TABLE pin 
	ADD ry INT NULL,
	ADD rpid VARCHAR(50) NULL,
	ADD rputype VARCHAR(25) NULL;
	
	
UPDATE faaslist f,  pin p  SET 
	p.rputype = f.rputype,
	p.ry = f.ry 
WHERE f.fullpin = p.pin  
  AND f.claimno = p.claimno
  AND p.ry IS NULL;



ALTER TABLE pin CHANGE COLUMN ry ry INT NOT NULL;

ALTER TABLE pin ADD CONSTRAINT pk_pin PRIMARY KEY (pin, claimno, ry);



/*====================================================================================
** additional index 
====================================================================================*/

CREATE INDEX ix_faaslist_docstate_ry ON faaslist (docstate,ry);

ALTER TABLE pin DROP INDEX ux_pin_pinclaimno;


CREATE TABLE batchgrerror
(
	faasid VARCHAR(50) PRIMARY KEY,
	ry INT NOT NULL,
	msg TEXT
);





/*====================================================================================
**
**  SYSTEM UPDATES
**
====================================================================================*/

USE dev221_system;

/*====================================================================================
** insert messaging sys_var keys
====================================================================================*/

INSERT INTO sys_var( NAME, VALUE ) VALUES ('client_id', '');
INSERT INTO sys_var( NAME, VALUE ) VALUES('client_name', '');
	
INSERT INTO sys_var( NAME, VALUE ) VALUES ('remote_id', '');
INSERT INTO sys_var( NAME, VALUE ) VALUES('remote_name', '');
INSERT INTO sys_var( NAME, VALUE ) VALUES( 'gr_renumber_pin', '0');	
	


	
	
	
	