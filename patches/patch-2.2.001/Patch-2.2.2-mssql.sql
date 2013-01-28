
/*---------------------------------------------------------------------------------
**
** DEV221_SYSTEM
**
--------------------------------------------------------------------------------- */

INSERT INTO sys_role( NAME, domain) VALUES('MASTER_ENCODER', 'CTC')
go






/*---------------------------------------------------------------------------------
**
** DEV221_ETRACS
**
--------------------------------------------------------------------------------- */
use dev221_etracs
go

if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('profession') AND type in ('U'))
begin
	CREATE TABLE profession
	(
		objid VARCHAR(100) NOT NULL PRIMARY KEY
	);
end
go 	


INSERT INTO role(role, description, sysrole, system, domain )
VALUES('MASTER_ENCODER', 'MASTER ENCODER', 'MASTER_ENCODER', 1, 'CTC')
go


