/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

insert into role (role, sysrole, system, domain) values ('CTC_REPORTS', 'CTC_REPORTS', 1, 'CTC') ;
insert into role(name, sysrole, system, domain)  values ('RULE_AUTHOR', 'RULE_AUTHOR',1,'CTC');  
insert into role(name, sysrole, system, domain)  values ('MASTER_ENCODER', 'MASTER_ENCODER', 1,'CTC');


CREATE TABLE if not exists ctcbrgyshare(
	year int NOT NULL,
	month int NOT NULL,
	barangay varchar(50) NOT NULL,
	amount decimal(16, 2) NOT NULL,
	interest decimal(16, 2) NOT NULL,
	shareamount decimal(16, 2) NOT NULL,
	shareinterest decimal(16, 2) NOT NULL
);

CREATE TABLE if not exists profession (             
  objid varchar(100) NOT NULL,        
  PRIMARY KEY  (objid)                
);

CREATE TABLE if not exists citizenship (          
   objid varchar(50) NOT NULL,       
   PRIMARY KEY  (objid)              
 );
 
insert into citizenship
( objid)
values
('FILIPINO');


/*=================================================================
** SYSTEMDB
=================================================================*/

use lguname_system;

insert into rulegroup(objid, name, sortorder, ruleset) values ('CTCTAX', 'TAX', '1', 'ctcassessment');
insert into rulegroup(objid, name, sortorder, ruleset) values ('CTCINT', 'INTEREST', '2', 'ctcassessment');
insert into rulegroup(objid, name, sortorder, ruleset) values ('ATAX', 'AFTER TAX', '3', 'ctcassessment');
insert into rulegroup(objid, name, sortorder, ruleset) values ('AINT', 'AFTER INTEREST', '4', 'ctcassessment');

insert into rule_sets (name, rulegroup)
values ('ctcassessment', '');

insert into sys_role(name, domain) values ('RULE_AUTHOR', 'CTC');  
insert into sys_role(name, domain) values ('MASTER_ENCODER', 'CTC');  
insert into sys_role(name, domain) values ('CTC_REPORTS', 'CTC');

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('CTC_REPORTS', 'CTC', 'ctcreport.brgyshare', 'Generate CTC Brgy Share', 'ctc2');

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('RULE_AUTHOR', 'CTC', 'ctcassessmentrule.view', 'Manage CTC Rules', 'ctc-rule-mgmt');

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('MASTER_ENCODER', 'CTC', 'profession.viewlist', 'View Profession List', 'ctc2');

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('MASTER_ENCODER', 'CTC', 'profession.create', 'Create Profession', 'ctc2');

insert into sys_role_permission ( sysrole, domain, action, title, module)
values('MASTER_ENCODER', 'CTC', 'profession.delete', 'Delete Profession', 'ctc2');

 