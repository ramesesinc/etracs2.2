/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

alter table bpreceivable 
	change acctid acctid varchar(50) default '' NOT NULL,
	change `applicationtype` `applicationtype` varchar(20) default '' NOT NULL;

alter table bpreceivable
	add index ix_bpreceivable_businessid (businessid),
	add index ix_bpreceivable_applicationid (applicationid);

alter table bpreceivablecredit 
	add index ix_bpreceivable_receivableid (bpreceivableid);

CREATE TABLE bplexpiry (                    
	 `iqtr` int(11) NOT NULL,                    
	 `iyear` int(11) NOT NULL,                   
	 `expirytype` varchar(50) NOT NULL,          
	 `expirydate` datetime default NULL,         
	 PRIMARY KEY  (`iqtr`,`iyear`,`expirytype`)  
   ) ENGINE=InnoDB; 
   
CREATE TABLE signatory (                  
 `objid` varchar(50) NOT NULL,             
 `state` varchar(10) NOT NULL,             
 `doctype` varchar(50) NOT NULL,           
 `indexno` int(11) NOT NULL,               
 `lastname` varchar(50) NOT NULL,          
 `firstname` varchar(50) NOT NULL,         
 `middlename` varchar(50) default NULL,    
 `name` varchar(150) default NULL,         
 `title` varchar(50) NOT NULL default '',  
 `department` varchar(50) default NULL,    
 `personnelid` varchar(50) default '',     
 PRIMARY KEY  (`objid`),                   
 KEY `ix_signatory_doctype` (`doctype`)    
) ENGINE=InnoDB; 


CREATE TABLE `faasupdate` (                  
  `objid` varchar(50) NOT NULL,              
  `tdno` varchar(30) default NULL,           
  `pin` varchar(50) default NULL,            
  `state` varchar(20) default NULL,          
  `faasid` varchar(50) default NULL,         
  `taxpayername` varchar(200) default NULL,  
  `info` text,                               
  `oldinfo` text,                            
  `rp` text,                                 
  `oldrp` text,                              
  `filedby` varchar(100) default NULL,       
  `dtfiled` datetime default NULL,           
  `approvedby` varchar(100) default NULL,    
  `dtapproved` datetime default NULL,        
  `rputype` varchar(10) default NULL,        
  PRIMARY KEY  (`objid`),                    
  KEY `ix_faasupdate_tdno` (`tdno`),         
  KEY `ix_faasupdate_pin` (`pin`),           
  KEY `ix_faasupdate_state` (`state`)        
) ENGINE=InnoDB;
	

/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system;

INSERT INTO sys_var (`name`, `value`, description, category )
VALUES ('bp_allowed_days_for_discount', '0', 'Default No of Days for BP Discount', 'BP');

INSERT INTO sys_var (`name`, `value`, description, category )
VALUES ('bp_days_before_qtr_surcharge', '20', 'Default No of Days for BP Surcharge', 'BP');

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPRAISER', 'RPT', 'faasmgmtupdate.view', 'View FAAS Update Management', 'rpt2' ) ;

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPRAISER', 'RPT', 'faasupdate.create', 'Create Faas Update', 'rpt2' ) ;

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPRAISER', 'RPT', 'faasupdate.edit', 'Edit Faas Update', 'rpt2' ) ;

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPROVER', 'RPT', 'faasupdate.approve', 'Approve Faas Update', 'rpt2' ) ;

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'MASTER_ENCODER', 'BP', 'bpapplicationsignatory.create', 'Create BP Application Signatory', 'bp2' ) ;

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'MASTER_ENCODER', 'BP', 'bpassessmentsignatory.create', 'Create BP Assessment Signatory', 'bp2' ) ;

