/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

insert into role (role, sysrole, system, domain) values ('CTC_REPORTS', 'CTC_REPORTS', 1, 'CTC') 
go
insert into role(name, sysrole, system, domain)  values ('RULE_AUTHOR', 'RULE_AUTHOR',1,'CTC')
go
insert into role(name, sysrole, system, domain)  values ('MASTER_ENCODER', 'MASTER_ENCODER', 1,'CTC')
go


drop table ctcbrgyshare
go

CREATE TABLE ctcbrgyshare(
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[barangay] [varchar](50) NOT NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[interest] [decimal](16, 2) NOT NULL,
	[shareamount] [decimal](16, 2) NOT NULL,
	[shareinterest] [decimal](16, 2) NOT NULL
)

go

CREATE TABLE  profession (             
  objid varchar(100) NOT NULL,        
  PRIMARY KEY  (objid)                
)

go

CREATE TABLE citizenship (          
   objid varchar(50) NOT NULL,       
   PRIMARY KEY  (objid)              
 );
 
 go
 
insert into citizenship
( objid)
values
('FILIPINO')

go


/*=================================================================
** SYSTEMDB
=================================================================*/

use lguname_system
go

insert into rulegroup(objid, name, sortorder, ruleset) values ('CTCTAX', 'TAX', '1', 'ctcassessment')
go
insert into rulegroup(objid, name, sortorder, ruleset) values ('CTCINT', 'INTEREST', '2', 'ctcassessment')
go
insert into rulegroup(objid, name, sortorder, ruleset) values ('ATAX', 'AFTER TAX', '3', 'ctcassessment')
go
insert into rulegroup(objid, name, sortorder, ruleset) values ('AINT', 'AFTER INTEREST', '4', 'ctcassessment')
go

insert into rule_sets (name, rulegroup) values ('ctcassessment', '') 
go

insert into sys_role(name, domain) values ('RULE_AUTHOR', 'CTC')
go  
insert into sys_role(name, domain) values ('MASTER_ENCODER', 'CTC')
go
insert into sys_role(name, domain) values ('CTC_REPORTS', 'CTC')
go

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('CTC_REPORTS', 'CTC', 'ctcreport.brgyshare', 'Generate CTC Brgy Share', 'ctc2')
go

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('RULE_AUTHOR', 'CTC', 'ctcassessmentrule.view', 'Manage CTC Rules', 'ctc-rule-mgmt')
go

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('MASTER_ENCODER', 'CTC', 'profession.viewlist', 'View Profession List', 'ctc2')
go

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('MASTER_ENCODER', 'CTC', 'profession.create', 'Create Profession', 'ctc2')
go

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('MASTER_ENCODER', 'CTC', 'profession.delete', 'Delete Profession', 'ctc2')
go

 