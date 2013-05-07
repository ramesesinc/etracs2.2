/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go


CREATE TABLE mcsettlement (                      
	objid varchar(50) NOT NULL,                    
	schemaname varchar(50) default NULL,           
	schemaversion varchar(10) default NULL,        
	docno varchar(10) default NULL,                
	docstate varchar(30) default NULL,             
	faasid varchar(50) default NULL,               
	newtdno varchar(30) default NULL,              
	issuedate date default NULL,                   
	effectivityyear int default NULL,          
	effectivityqtr int default NULL,           
	appraisedby varchar(100) default NULL,         
	appraisedbytitle varchar(100) default NULL,    
	dtappraised date default NULL,                 
	recommendedby varchar(100) default NULL,       
	recommendedbytitle varchar(100) default NULL,  
	dtrecommended date default NULL,               
	approvedby varchar(100) default NULL,          
	approvedbytitle varchar(100) default NULL,     
	dtapproved date default NULL,                  
	memoranda text,                                
	prevfaasid varchar(50) default NULL,           
	prevtdno varchar(30) default NULL,             
	pin varchar(50) default NULL,                  
	taxpayername varchar(150) default NULL,        
	cadastrallotno varchar(30) default NULL,       
	extended text,                                 
	PRIMARY KEY  (objid)                           
  ) 
  
 go 
  
CREATE TABLE mcsettlement_affectedrpu (       
	objid varchar(50) NOT NULL,                 
	mcsettlementid varchar(50) default NULL,    
	faasid varchar(50) default NULL,            
	rputype varchar(10) default NULL,           
	pin varchar(50) default NULL,               
	tdno varchar(30) default NULL,              
	taxpayername varchar(150) default NULL,     
	taxpayeraddress varchar(255) default NULL,  
	cadastrallotno varchar(20) default NULL,    
	areasqm numeric(10,4) default NULL,         
	memoranda text,                             
	prevfaasid varchar(50) default NULL,        
	prevtdno varchar(30) default NULL,          
	PRIMARY KEY  (objid)                        
  )
  
 go
 
CREATE TABLE mcsettlement_otherclaims (       
	objid varchar(50) NOT NULL,                 
	mcsettlementid varchar(50) default NULL,    
	faasid varchar(50) default NULL,            
	tdno varchar(30) default NULL,              
	pin varchar(50) default NULL,               
	taxpayername varchar(150) default NULL,     
	taxpayeraddress varchar(255) default NULL,  
	cadastrallotno varchar(20) default NULL,    
	areasqm numeric(10,4) default NULL,         
	PRIMARY KEY  (objid)                        
  ) 

go


/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'APPRAISER', 'RPT', 'multipleclaimsettlementmgmt.view', 'View Multiple Claim Settlement Management', 'rpt2' ) 
go
insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'APPRAISER', 'RPT', 'multipleclaimsettlement.create', 'Create Multiple Claim Settlement', 'rpt2' ) 
go
insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'APPRAISER', 'RPT', 'multipleclaimsettlement.view', 'View Multiple Claim Settlement', 'rpt2' ) 
go
insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'APPRAISER', 'RPT', 'multipleclaimsettlement.submit', 'Submit Multiple Claim Settlement For Approval', 'rpt2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'MUNICIPAL_ASSESSOR', 'RPT', 'multipleclaimsettlement.submitToProvince', 'Submit Multiple Claim Settlement to Province', 'rpt2' ) 
go

insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'CITY_ASSESSOR', 'RPT', 'multipleclaimsettlement.disapprove', 'Disapprove Multiple Claim Settlement', 'rpt2' ) 
go
insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'CITY_ASSESSOR', 'RPT', 'multipleclaimsettlement.approve', 'Approve Multiple Claim Settlement Management', 'rpt2' )  
go

insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'PROVINCIAL_ASSESSOR', 'RPT', 'multipleclaimsettlement.disapproveByProvince', 'Disapprove Multiple Claim Settlement', 'rpt2' ) 
go
insert into sys_role_permission (sysrole, domain, action, title, module ) values ( 'PROVINCIAL_ASSESSOR', 'RPT', 'multipleclaimsettlement.approveByProvince', 'Approve Multiple Claim Settlement Management', 'rpt2' )  
go