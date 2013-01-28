
/*---------------------------------------------------------------------------------
**
** DEV221_SYSTEM
**
--------------------------------------------------------------------------------- */

INSERT INTO sys_role( NAME, domain) VALUES('MASTER_ENCODER', 'CTC');






/*---------------------------------------------------------------------------------
**
** DEV221_ETRACS
**
--------------------------------------------------------------------------------- */

USE dev221_etracs;

CREATE TABLE profession
(
	objid VARCHAR(100) NOT NULL PRIMARY KEY
);

INSERT INTO role(role, description, sysrole, system, domain )
VALUES('MASTER_ENCODER', 'MASTER ENCODER', 'MASTER_ENCODER', 1, 'CTC');

