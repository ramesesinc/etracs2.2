/*---------------------------------------------------------------------------------
**
** GENERAL REVISION 
**
--------------------------------------------------------------------------------- */

use dev221_etracs
go

/*====================================================================================
**
** Add ry on table pin to accommodate resetting of pin during general revision. 
** 
====================================================================================*/
DECLARE @SQL VARCHAR(4000)
SET @SQL = 'ALTER TABLE pin DROP CONSTRAINT |ConstraintName| '

SET @SQL = REPLACE(@SQL, '|ConstraintName|', ( SELECT   name
                                               FROM     sysobjects
                                               WHERE    xtype = 'PK'
                                                        AND parent_obj = OBJECT_ID('pin')
                                             ))	
EXEC (@SQL)
go

alter table pin add ry int null
go
alter table pin add rpid varchar(50) null
go
alter table pin add rputype varchar(25) null
go
	
update p set 
	p.rputype = f.rputype,
	p.ry = f.ry 
from faaslist f
	inner join pin p on f.fullpin = p.pin  and f.claimno = p.claimno and f.ry = p.ry 	
go 

alter table pin alter column ry int not null
go

alter table pin add constraint pk_pin primary key (pin, claimno, ry)
go


/*====================================================================================
** additional index 
====================================================================================*/

CREATE NONCLUSTERED INDEX ix_faaslist_docstate_ry
ON [dbo].[faaslist] ([docstate],[ry])
go


drop index pin.ux_pin_pinclaimno
go


create table batchgrerror
(
	faasid varchar(50) primary key,
	ry int not null,
	msg text
)
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




/*====================================================================================
**
**  SYSTEM UPDATES
**
====================================================================================*/

use dev221_system
go

/*====================================================================================
** insert messaging sys_var keys
====================================================================================*/

insert into sys_var( name, value ) values ('client_id', '003-17')
go
insert into sys_var( name, value ) values('client_name', 'PIDDIG')
go
	
insert into sys_var( name, value ) values ('remote_id', '003')
go
insert into sys_var( name, value ) values('remote_name', 'LUPAIN')
go
insert into sys_var( name, value ) values( 'gr_renumber_pin', '1')	
	
	
INSERT INTO sys_role( NAME, domain) VALUES('MASTER_ENCODER', 'CTC')
go

	
	
	
	