/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go

alter table bpreceivable alter column acctid varchar(50) NOT NULL
go

alter table bpreceivable alter column applicationtype varchar(20) NOT NULL
	
go

CREATE INDEX ix_bpreceivable_businessid ON bpreceivable(businessid)

go

CREATE INDEX ix_bpreceivable_applicationid ON bpreceivable(applicationid)

go

CREATE INDEX ix_bpreceivable_receivableid ON bpreceivablecredit(bpreceivableid)

go
	

CREATE TABLE bplexpiry (                    
	 iqtr int NOT NULL,                    
	 iyear int NOT NULL,                   
	 expirytype varchar(50) NOT NULL,          
	 expirydate datetime default NULL,         
	 PRIMARY KEY  (iqtr,iyear,expirytype)  
   )
   
go  
   
CREATE TABLE signatory (                  
 objid varchar(50) NOT NULL,             
 state varchar(10) NOT NULL,             
 doctype varchar(50) NOT NULL,           
 indexno int NOT NULL,               
 lastname varchar(50) NOT NULL,          
 firstname varchar(50) NOT NULL,         
 middlename varchar(50) default NULL,    
 name varchar(150) default NULL,         
 title varchar(50) NOT NULL default '',  
 department varchar(50) default NULL,    
 personnelid varchar(50) default '',     
 PRIMARY KEY  (objid) 
) 

go

CREATE INDEX ix_signatory_doctype ON signatory(doctype)

go

CREATE TABLE faasupdate (                  
  objid varchar(50) NOT NULL,              
  tdno varchar(30) default NULL,           
  pin varchar(50) default NULL,            
  state varchar(20) default NULL,          
  faasid varchar(50) default NULL,         
  taxpayername varchar(200) default NULL,  
  info text,                               
  oldinfo text,                            
  rp text,                                 
  oldrp text,                              
  filedby varchar(100) default NULL,       
  dtfiled datetime default NULL,           
  approvedby varchar(100) default NULL,    
  dtapproved datetime default NULL,        
  rputype varchar(10) default NULL,        
  PRIMARY KEY  (objid)      
)

go

CREATE INDEX ix_faasupdate_tdno ON faasupdate(tdno)

go

CREATE INDEX ix_faasupdate_pin ON faasupdate(pin)

go

CREATE INDEX ix_faasupdate_state ON faasupdate(state)

go

/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

INSERT INTO sys_var (name, value, description, category )
VALUES ('bp_allowed_days_for_discount', '0', 'Default No of Days for BP Discount', 'BP')
go

INSERT INTO sys_var (name, value, description, category )
VALUES ('bp_days_before_qtr_surcharge', '20', 'Default No of Days for BP Surcharge', 'BP')
go

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPRAISER', 'RPT', 'faasmgmtupdate.view', 'View FAAS Update Management', 'rpt2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPRAISER', 'RPT', 'faasupdate.create', 'Create Faas Update', 'rpt2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPRAISER', 'RPT', 'faasupdate.edit', 'Edit Faas Update', 'rpt2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'APPROVER', 'RPT', 'faasupdate.approve', 'Approve Faas Update', 'rpt2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'MASTER_ENCODER', 'BP', 'bpapplicationsignatory.create', 'Create BP Application Signatory', 'bp2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) 
values ( 'MASTER_ENCODER', 'BP', 'bpassessmentsignatory.create', 'Create BP Assessment Signatory', 'bp2' ) 
go
