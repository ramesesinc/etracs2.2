-- add permission: changedepreciation.create to rpt2


ALTER TABLE lguname_etracs.rptsetting ADD COLUMN allowreassessmentwithbalance INT NULL;

UPDATE lguname_etracs.rptsetting SET allowreassessmentwithbalance = 0 WHERE allowreassessmentwithbalance IS NULL ;


ALTER TABLE lguname_etracs.rptsetting ADD COLUMN allowchangedepreciationwithbalance INT NULL;

UPDATE lguname_etracs.rptsetting SET allowchangedepreciationwithbalance = 0;

update lguname_system.sys_module set permissions = '[   [ action:''account.view'',           title:''View Chart of Account'' ],   [ action:''account.addcategory'',    title:''Add Account Category'' ],   [ action:''account.addglacct'',      title:''Add GL Account'' ],   [ action:''account.addsubacct'',     title:''Add Sub-Account'' ],   [ action:''account.edit'',     title:''Edit Account Information'' ],   [ action:''account.delete'',   title:''Delete Account Information'' ],     [ action:''bank.view'',     title:''View Bank Information'' ],   [ action:''bank.create'',   title:''Create Bank'' ],   [ action:''bank.edit'',     title:''Edit Bank'' ],   [ action:''bank.delete'',   title:''Delete Bank'' ],     [ action:''bankacct.view'',     title:''View Bank Account Information'' ],   [ action:''bankacct.create'',   title:''Create Bank Account'' ],   [ action:''bankacct.edit'',     title:''Edit Bank Account'' ],   [ action:''bankacct.delete'',   title:''Delete Bank Account'' ],   [ action:''bankacct.approve'',  title:''Approve Bank Account'' ],     [ action:''collectionsetting.manage'', title:''Manage Collection Setting'' ],   [ action:''collectiontype.viewlist'',  title:''View Collection Type Listing'' ],   [ action:''collectiontype.create'',    title:''Create Collection Type'' ],   [ action:''collectiontype.edit'',      title:''Edit Collection Type'' ],   [ action:''collectiontype.delete'',    title:''Delete Collection Type'' ],     [ action:''fund.viewlist'',  title:''View Fund Listing'' ],   [ action:''fund.create'',    title:''Create Fund'' ],   [ action:''fund.edit'',      title:''Edit Fund'' ],   [ action:''fund.delete'',    title:''Delete Fund'' ],   [ action:''fund.approve'',   title:''Approve Fund'' ],     [ action:''incomeacct.viewlist'',  title:''View Income Account Listing'' ],   [ action:''incomeacct.create'',    title:''Create Income Account'' ],   [ action:''incomeacct.edit'',      title:''Edit Income Account'' ],   [ action:''incomeacct.delete'',    title:''Delete Income Account'' ],   [ action:''incomeacct.approve'',   title:''Approve Income Account'' ],     [ action:''incomeacctgroup.viewlist'',  title:''View Income Account Group Listing'' ],   [ action:''incomeacctgroup.create'',    title:''Create Income Account Group'' ],   [ action:''incomeacctgroup.delete'',    title:''Delete Income Account Group'' ],      [ action:''tcmanagement.open'' ,title:''Manage TC Master Files'' ],        [ action:''af.viewlist'',  title:''View Accountable Form Listing'' ],   [ action:''af.create'',    title:''Create Accountable Form'' ],   [ action:''af.edit'',      title:''Edit Accountable Form'' ],   [ action:''af.delete'',    title:''Delete Accountable Form'' ],   [ action:''af.approve'',   title:''Approve Accountable Form'' ],     [ action:''afcontrol.changemode'',  title:''AF Control Change Mode'' ],   [ action:''afcontrol.activate'',    title:''Activate AF Control'' ],   [ action:''afcontrol.transfer'' ,title:''Transfer AF Control'' ],   [ action:''afcontrol.adjustqty'' ,title:''Adjust AF Control Quantity (NonSerial)'' ],       [ action:''riv_lgu.create'', title:''Create LGU RIV'' ],   [ action:''riv.create'',    title:''Create RIV'' ],   [ action:''riv.salecreate'',title:''Create RIV (SALE)'' ],   [action:''riv.collector'', title:''Create RIV (Collector)''],   [ action:''riv.edit'',      title:''Edit RIV'' ],   [ action:''riv.delete'',    title:''Delete RIV'' ],   [ action:''riv.approve'',   title:''Approve RIV'' ],   [ action:''riv.preview'',   title:''Preview RIV'' ],      [ action:''iraf.viewlist'',  title:''View IRAF Listing'' ],   [ action:''iraf.create'',    title:''Create IRAF'' ],   [ action:''iraf.edit'',      title:''Edit IRAF'' ],   [ action:''iraf.delete'',    title:''Delete IRAF'' ],   [ action:''iraf.approve'',   title:''Approve IRAF'' ],     [ action:''afinventory.view'', title:''View AF Inventory Information'' ],       [ action:''deposit.viewlist'',   title:''View Deposit Listing'' ],   [ action:''deposit.view'',       title:''View Deposit Information'' ],   [ action:''deposit.create'',     title:''Create Deposit Information'' ],   [ action:''deposit.close'',      title:''Close Deposit Information'' ],   [ action:''deposit.addnoncash'', title:''Add Non-Cash Payments for Deposit'' ],   [ action:''deposit.addexternalnoncash'',     title:''Add External Non-Cash for Deposit'' ],     [ action:''collection.create_online'',   title:''Create Online Collection''],   [ action:''collection.create_offline'',  title:''Create Offline Collection''],      [ action:''remittance.create'',          title:''Create Remittance'' ],   [ action:''remittance.submit'',          title:''Submit Remittance'' ],   [ action:''remittance.viewlist'',        title:''View Remittance Listing'' ],   [action:''remittance.import'',  title:''Import Remittance''],     [ action:''receipt.viewissued'',    title:''View Issued Receipt Listing'' ],   [ action:''receipt.inquire'',       title:''Inquire Receipt Information'' ],     [ action:''afcontrol.activate'',  title:''Activate AF Control'' ],   [ action:''afcontrol.assignto'',  title:''Assign AF Control'' ],       [action:''batchcapturemgmt.view'' ,title:''View Batch Capture Management''],    [action:''batchcapture.create''  ,title:''Create Batch Capture'' ],   [action:''batchcapture.open''  ,title:''Open Batch Capture'' ],    [action:''batchcapture.view''  ,title:''View Batch Capture'' ],   [action:''batchcapture.delete''  ,title:''Delete Batch Capture'' ],   [action:''batchcapture.post''  ,title:''Post Batch Capture'' ],     [ action:''collection_burial.create'',  title:''Create Burial Permit Fee Collection'' ],   [ action:''collection_burial.edit'',    title:''Edit Burial Permit Fee Collection'' ],   [ action:''collection_burial.print'',   title:''Print Burial Permit Fee Collection'' ],   [ action:''collection_burial.void'',    title:''Void Burial Permit Fee Collection'' ],   [ action:''collection_burial.inquire'', title:''Inquire Burial Permit Fee Collection'' ],     [ action:''collection_cashticket.create'',  title:''Create Cash Ticket Collection'' ],   [ action:''collection_cashticket.delete'',  title:''Delete Cash Ticket Collection'' ],   [ action:''collection_cashticket.inquire'', title:''Inquire Cash Ticket  Collection'' ],     [ action:''collection_cattleownership.create'',  title:''Create Large Cattle Ownership Collection'' ],   [ action:''collection_cattleownership.edit'',    title:''Edit Large Cattle Ownership Collection'' ],   [ action:''collection_cattleownership.print'',   title:''Print Large Cattle Ownership Collection'' ],   [ action:''collection_cattleownership.void'',    title:''Void Large Cattle Ownership Collection'' ],   [ action:''collection_cattleownership.inquiry'', title:''Inquire Large Cattle Ownership  Collection'' ],     [ action:''collection_cattletransfer.create'',  title:''Create Large Cattle Transfer Collection'' ],   [ action:''collection_cattletransfer.edit'',    title:''Edit Large Cattle Transfer Collection'' ],   [ action:''collection_cattletransfer.print'',   title:''Print Large Cattle Transfer Collection'' ],   [ action:''collection_cattletransfer.void'',    title:''Void Large Cattle Transfer Collection'' ],   [ action:''collection_cattletransfer.inquiry'', title:''Inquire Large Cattle Transfer  Collection'' ],     [ action:''collection_general.create'',  title:''Create General Collection'' ],   [ action:''collection_general.edit'',    title:''Edit General Collection'' ],   [ action:''collection_general.print'',   title:''Print General Collection'' ],   [ action:''collection_general.void'',    title:''Void General Collection'' ],   [ action:''collection_general.inquire'', title:''Inquire General Collection'' ],     [ action:''collection_marriage.create'',  title:''Create Marriage License Fee Collection'' ],   [ action:''collection_marriage.edit'',    title:''Edit Marriage License Fee Collection'' ],   [ action:''collection_marriage.print'',   title:''Print Marriage License Fee Collection'' ],   [ action:''collection_marriage.void'',    title:''Void Marriage License Fee Collection'' ],   [ action:''collection_marriage.inquiry'', title:''Inquire Marriage License Fee  Collection'' ],     [action:''postcapturereceipt.create'',   title:''Create Post Capture Receipt''],   [action:''postcapturereceipt.post'',     title:''Submit Post Capture Receipt''],       [action:''tcreport.abstractofcollection'' ,title:''Generate Abstract of Collection Report''],   [action:''tcreport.abstractofcollectionbychart'' ,title:''Generate Abstract of Colleciton By Chart of Account'' ],   [action:''tcreport.incomeaccount''   ,title:''Income Account Report''],   [action:''tcreport.craaf''    ,title:''CRAAF Report''],   [action:''tcreport.statementofrevenue''  ,title:''Generate Statement of Revenue''],    [action:''tcreport.reportofcollection''  ,title:''Report of Collection'' ],   [action:''tcreport.reportofcollection2''  ,title:''Report of Collection 2'' ],     [action:''collection_slaughterpermit.inquiry''  ,title:''Inquire Slaughter Permit'' ],   [action:''collection_slaughterpermit.create''  ,title:''Create Slaughter Permit''],   [action:''collection_slaughterpermit.print''  ,title:''Print Slaughter Permit'' ],   [action:''collection_slaughterpermit.void''  ,title:''Void Slaughter Permit'' ],   [action:''collection_slaughterpermit.edit''  ,title:''Edit Slaughter Permit'' ],       [ action:''liquidation.create'', title:''Create Liquidation'' ],   [ action:''liquidationmulti.create'', title:''Create Multi-Cashier Liquidation''],   [ action:''liquidation.submit'', title:''Submit Liquidation'' ],   [ action:''liquidation.viewlist'', title:''View Liquidation Listing'' ]     [ action:''collection.create_capture'' ,title:''Create Capture Collection''],   [ action:''receipt.viewissued''  ,title:''View Issued Receipt Listing'' ],   [ action:''afcontrol.activate''  ,title:''Activate AF Control'' ],   [ action:''postcapturereceipt.create'' ,title:''Create Post Capture Receipt''],   [ action:''postcapturereceipt.post'' ,title:''Submit Post Capture Receipt''],   [ action:''postcapturereceipt.viewlist'' ,title:''View Post Capture Listing'' ],     [ action:''bpadmin.setting''  ,title:''Manage BP Setting'' ],     [action:''treasurymgmt.view'',                title:''View Treasury Management''],   [action:''treasurymgmt_abstract.view'',       title:''View Treasury Management (Abstract of Collection)''],   [action:''treasurymgmt_afmonitoring.view'',   title:''View Treasury Management (AF Monitoring)''],   [action:''treasurymgmt_collection.view'',     title:''View Treasury Management (Collection Summary)''],   [action:''treasurymgmt_fund.view'',           title:''View Treasury Management (Fund Summary)''],   [action:''treasurymgmt_liquidation.view'',    title:''View Treasury Management (Liquidation Detail)''],   [action:''treasurymgmt_remittance.view'',     title:''View Treasury Management (Remittance Monitoring)''],   [action:''treasurymgmt_liquidation.view'',    title:''View Undeposited Liquidation Summary'' ],      [action:''form60.setup''  ,title:''Setup Form 60 Report''],      [action:''collectiongroup.view''  ,title:''View Collection Groups'' ],   [action:''collectiongroup.create'' ,title:''Create Collection Group'' ],   [action:''collectiongroup.edit''  ,title:''Edit Collection Group'' ],   [action:''collectiongroup.delete'' ,title:''Delete Collection Group'' ],  [ action:''remittance_subcollector.create'',          title:''Create Subcollector Remittance'' ],   [ action:''remittance_subcollector.submit'',          title:''Submit Subcollector Remittance'' ],   [ action:''remittance_subcollector.viewlist'',        title:''View Subcollector Remittance Listing'' ],  ]' where name ='tc2' 

create table lguname_etracs.remittance_subcollector (
	objid varchar(50) NOT NULL,
	schemaname varchar(50) NOT NULL,
	schemaversion varchar(5) NOT NULL,
	docstate varchar(20) NOT NULL,
	txnno varchar(20) NOT NULL,
	txndate date NOT NULL,
	collectorname varchar(50) NOT NULL,
	amount decimal(10, 2) NULL,
	collectorid varchar(50) NOT NULL,
	collectortitle varchar(50) NULL,
	totalcash decimal(10, 2) NULL,
	totalotherpayment decimal(10, 2) NULL,
	remittanceid varchar(50) NULL,
	remittanceno varchar(15) NULL,
	remittancedate date NULL,
	remittanceofficerid varchar(50) NULL,
	remittanceofficername varchar(50) NULL,
	remittanceofficertitle varchar(50) NULL,
	info text NULL,
	PRIMARY KEY  (objid)
);

alter table lguname_etracs.receiptlist add sc_remittanceid varchar(50) null;




/* ============================================================
**  DENORMALIZE REMITTANCE SUPPORT 
============================================================ */

ALTER TABLE lguname_etracs.remittancelist ADD COLUMN dtposted DATE NULL;

UPDATE lguname_etracs.remittancelist SET dtposted = txndate;

ALTER TABLE lguname_etracs.remittancelist CHANGE COLUMN dtposted dtposted DATE NOT NULL;

ALTER TABLE lguname_etracs.remittancelist ADD COLUMN denominations VARCHAR(600) NULL;

ALTER TABLE lguname_etracs.remittancelist DROP FOREIGN KEY FK_remittancelist_remittance;


ALTER TABLE lguname_etracs.receiptlist DROP FOREIGN KEY FK_receiptlist_remittance;

ALTER TABLE lguname_etracs.remittedform DROP FOREIGN KEY FK_remittedform_remittance;



RENAME TABLE lguname_etracs.remittance TO dev_etracs.xremittance; 

RENAME TABLE lguname_etracs.remittancelist TO dev_etracs.remittance; 


ALTER TABLE lguname_etracs.receiptlist
	ADD CONSTRAINT FK_receiptlist_remittance FOREIGN KEY (remittanceid) REFERENCES lguname_etracs.remittance(objid);

ALTER TABLE lguname_etracs.remittedform
	ADD CONSTRAINT FK_remittedform_remittance FOREIGN KEY (remittanceid) REFERENCES lguname_etracs.remittance(objid);

RENAME TABLE lguname_etracs.`remittancelist` TO lguname_etracs.remittance;



/* =================================================================== 
** Normalize Liquidation  
=================================================================== */
ALTER TABLE lguname_etracs.liquidationlist ADD COLUMN dtposted DATE;

UPDATE lguname_etracs.liquidationlist SET dtposted = txndate;

ALTER TABLE lguname_etracs.liquidationlist CHANGE COLUMN dtposted dtposted DATE NOT NULL ;


ALTER TABLE lguname_etracs.liquidationlist ADD COLUMN denominations VARCHAR(600);

UPDATE lguname_etracs.liquidationlist SET denominations = '[]' ;


ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY FK_liquidationlist_deposit;

ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidationlist_liquidation;

ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidationlist_personnel;

ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidationlist_personnel_depositedbyid;


-- Rename related tables 
USE lguname_etracs;

RENAME TABLE liquidation TO xliquidation;

RENAME TABLE liquidationlist TO liquidation ;



ALTER TABLE lguname_etracs.liquidation
	ADD CONSTRAINT FK_liquidation_deposit FOREIGN KEY(depositid) REFERENCES lguname_etracs.deposit(objid);

ALTER TABLE lguname_etracs.liquidation
	ADD CONSTRAINT FK_liquidation_personnel FOREIGN KEY(liquidatingofficerid) REFERENCES lguname_etracs.personnel(objid);

ALTER TABLE lguname_etracs.liquidation 
	ADD CONSTRAINT FK_liquidation_personnel_depositedbyid FOREIGN KEY(depositedbyid) REFERENCES lguname_etracs.personnel(objid);
	
ALTER TABLE lguname_etracs.remittance DROP FOREIGN KEY FK_remittancelist_liquidation;

ALTER TABLE lguname_etracs.remittance DROP FOREIGN KEY  FK_remittancelist_personnel;

ALTER TABLE lguname_etracs.remittance DROP FOREIGN KEY  FK_remittancelist_personnel_lqid;



ALTER TABLE lguname_etracs.remittance 
	ADD CONSTRAINT FK_remittance_liquidation FOREIGN KEY(liquidationid) 
	REFERENCES lguname_etracs.liquidation( objid );

ALTER TABLE lguname_etracs.remittance 
	ADD CONSTRAINT FK_remittance_personnel FOREIGN KEY(collectorid) 
	REFERENCES lguname_etracs.personnel( objid );

ALTER TABLE lguname_etracs.remittance 
	ADD CONSTRAINT FK_remittance_personnel_lqid FOREIGN KEY(liquidatingofficerid) 
	REFERENCES lguname_etracs.personnel( objid );




insert into lguname_system.sys_module(name, title, permissions)
values('rpt2-reports', 'RPT Reports', '[[action:"rptreport.pdaprpta100", title:"Generate PDAP-RPTA 100 Report",]]');

insert into lguname_system.sys_roleclass_module
values('RPT', 'rpt2-reports');

alter table lguname_etracs..rptpaymentmanual add column basicadv decimal(16,2);
alter table lguname_etracs..rptpaymentmanual add column basicadvdisc decimal(16,2);
alter table lguname_etracs..rptpaymentmanual add column sefadv decimal(16,2);
alter table lguname_etracs..rptpaymentmanual add column sefadvdisc decimal(16,2);


update lguname_etracs.rptpaymentmanual set 
	basicadv = 0.0, basicadvdisc = 0.0, 
	sefadv = 0.0, sefadvdisc = 0.0;
	
	
	
CREATE TABLE lguname_system.`sys_role` (
  `name` VARCHAR(50) NOT NULL,
  `domain` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`name`,`domain`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE lguname_system.`sys_role_permission` (
  `sysrole` VARCHAR(50) NOT NULL,
  `domain` VARCHAR(50) NOT NULL,
  `key` VARCHAR(50) NOT NULL,
  `title` VARCHAR(50) DEFAULT NULL,
  `module` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`sysrole`,`domain`,`key`),
  CONSTRAINT `FK_sys_role_permission` FOREIGN KEY (`sysrole`, `domain`) REFERENCES `sys_role` (`name`, `domain`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;



alter table lguname_etracs.orgtype add column system int not null;

update lguname_etracs.orgtype set system = 0;

update lguname_etracs.orgtype set system = 1 where name='BARANGAY';
	
	
use lguname_etracs;

drop index jobposition_role.unique_jobposition_sysrole;

create unique index unique_jobposition_sysrole on jobposition_role(jobpositionid, sysrole,domain);


ALTER TABLE lguname_etracs.personnel ADD COLUMN `txncode` VARCHAR(50) NULL AFTER `spouseinfo`;

UPDATE lguname_etracs.personnel p, lguname_etracs.personnel_txncode pc SET
p.txncode = pc.txncode 
WHERE pc.personnelid = p.objid;

DROP TABLE lguname_etracs.personnel_txncode;

-- drop table jobposition_tag;

ALTER TABLE lguname_etracs.jobposition DROP FOREIGN KEY  `FK_jobposition_role`;


ALTER TABLE lguname_etracs.`jobposition` DROP COLUMN `roleclass`, DROP COLUMN `role`, DROP COLUMN `excluded`;


ALTER TABLE lguname_etracs.`role` 
	DROP COLUMN `included`,
	ADD COLUMN `domain` VARCHAR(50) NULL AFTER `role`, 
	ADD COLUMN `excluded` TEXT NULL AFTER `sysrole`,
	CHANGE `name` `role` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '' NOT NULL, 
	CHANGE `description` `description` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL , 
	CHANGE `roleclass` `sysrole` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '' NOT NULL, 
	CHANGE `system` `system` INT(6) DEFAULT '0' NULL ;


ALTER TABLE lguname_etracs.`role` 
	CHANGE `domain` `domain` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	CHANGE `sysrole` `sysrole` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '' NOT NULL, DROP PRIMARY KEY,  
	ADD PRIMARY KEY(`role`, `domain`);


ALTER TABLE lguname_etracs.`role` DROP KEY `FK_role`;

ALTER TABLE lguname_etracs.`role` ADD INDEX `role_sysrole` (`sysrole`);


CREATE TABLE lguname_etracs.`jobposition_role` (
  `jobpositionid` VARCHAR(50) NOT NULL,
  `role` VARCHAR(50) NOT NULL,
  `domain` VARCHAR(50) NOT NULL,
  `sysrole` VARCHAR(50) NOT NULL,
  `disallowed` TEXT,
  PRIMARY KEY  (`jobpositionid`,`role`,`domain`),
  UNIQUE KEY `unique_jobposition_sysrole` (`jobpositionid`,`sysrole`, `domain`),
  KEY `FK_jobposition_role_role` (`role`,`domain`),
  CONSTRAINT `FK_jobposition_role_jobposition` FOREIGN KEY (`jobpositionid`) REFERENCES `jobposition` (`objid`),
  CONSTRAINT `FK_jobposition_role_role` FOREIGN KEY (`role`, `domain`) REFERENCES `role` (`role`, `domain`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;



CREATE TABLE lguname_system.`sys_role` (
  `name` VARCHAR(50) NOT NULL,
  `domain` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`name`,`domain`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE lguname_system.`sys_role_permission` (
  `sysrole` VARCHAR(50) NOT NULL,
  `domain` VARCHAR(50) NOT NULL,
  `key` VARCHAR(50) NOT NULL,
  `title` VARCHAR(50) DEFAULT NULL,
  `module` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`sysrole`,`domain`,`key`),
  CONSTRAINT `FK_sys_role_permission` FOREIGN KEY (`sysrole`, `domain`) REFERENCES `sys_role` (`name`, `domain`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;



delete from lguname_etracs.jobposition_role;
delete from lguname_etracs.role;
delete from lguname_system.sys_role;

insert  into lguname_system.sys_role(name,domain) values ('AFO','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('APPRAISER','RPT');
insert  into lguname_system.sys_role(name,domain) values ('APPROVER','RPT');
insert  into lguname_system.sys_role(name,domain) values ('ASSESSOR_REPORTS','RPT');
insert  into lguname_system.sys_role(name,domain) values ('BP_REPORTS','BP');
insert  into lguname_system.sys_role(name,domain) values ('CASHIER','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('CERTIFICATION_ISSUANCE','RPT');
insert  into lguname_system.sys_role(name,domain) values ('CITY_ASSESSOR','RPT');
insert  into lguname_system.sys_role(name,domain) values ('COLLECTOR','BP');
insert  into lguname_system.sys_role(name,domain) values ('COLLECTOR','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('ENTITY_ENCODER','ENTITY');
insert  into lguname_system.sys_role(name,domain) values ('LANDTAX','RPT');
insert  into lguname_system.sys_role(name,domain) values ('LICENSING','BP');
insert  into lguname_system.sys_role(name,domain) values ('LIQUIDATING_OFFICER','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('MASTER_ENCODER','BP');
insert  into lguname_system.sys_role(name,domain) values ('MASTER_ENCODER','RPT');
insert  into lguname_system.sys_role(name,domain) values ('MASTER_ENCODER','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('MUNICIPAL_ASSESSOR','RPT');
insert  into lguname_system.sys_role(name,domain) values ('PROVINCIAL_ASSESSOR','RPT');
insert  into lguname_system.sys_role(name,domain) values ('RELEASING','BP');
insert  into lguname_system.sys_role(name,domain) values ('RULE_AUTHOR','BP');
insert  into lguname_system.sys_role(name,domain) values ('RULE_AUTHOR','CTC');
insert  into lguname_system.sys_role(name,domain) values ('RULE_AUTHOR','RPT');
insert  into lguname_system.sys_role(name,domain) values ('RULE_MANAGEMENT','RULEMGMT');
insert  into lguname_system.sys_role(name,domain) values ('SHARED','BP');
insert  into lguname_system.sys_role(name,domain) values ('SHARED','RPT');
insert  into lguname_system.sys_role(name,domain) values ('SUBCOLLECTOR','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('TREASURY_ADMIN','TREASURY');
insert  into lguname_system.sys_role(name,domain) values ('TREASURY_REPORTS','TREASURY');


insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('AFO','TREASURY',NULL,'AFO',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('APPRAISER','RPT',NULL,'APPRAISER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('APPROVER','RPT',NULL,'APPROVER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('ASSESSOR_REPORTS','RPT',NULL,'ASSESSOR_REPORTS',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('BP_REPORTS','BP',NULL,'BP_REPORTS',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('CASHIER','TREASURY',NULL,'CASHIER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('CERTIFICATION_ISSUANCE','RPT',NULL,'CERTIFICATION_ISSUANCE',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('CITY_ASSESSOR','RPT',NULL,'CITY_ASSESSOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('COLLECTOR','BP',NULL,'COLLECTOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('COLLECTOR','TREASURY',NULL,'COLLECTOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('ENTITY_ENCODER','ENTITY',NULL,'ENTITY_ENCODER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('LANDTAX','RPT',NULL,'LANDTAX',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('LICENSING','BP',NULL,'LICENSING',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('LIQUIDATING_OFFICER','TREASURY',NULL,'LIQUIDATING_OFFICER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('MASTER_ENCODER','BP',NULL,'MASTER_ENCODER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('MASTER_ENCODER','RPT',NULL,'MASTER_ENCODER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('MASTER_ENCODER','TREASURY',NULL,'MASTER_ENCODER',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('MUNICIPAL_ASSESSOR','RPT',NULL,'MUNICIPAL_ASSESSOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('PROVINCIAL_ASSESSOR','RPT',NULL,'PROVINCIAL_ASSESSOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('RELEASING','BP',NULL,'RELEASING',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('RULE_AUTHOR','BP',NULL,'RULE_AUTHOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('RULE_AUTHOR','CTC',NULL,'RULE_AUTHOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('RULE_AUTHOR','RPT',NULL,'RULE_AUTHOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('RULE_MANAGEMENT','RULEMGMT',NULL,'RULE_MANAGEMENT',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('SHARED','BP',NULL,'SHARED',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('SHARED','RPT',NULL,'SHARED',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('SUBCOLLECTOR','TREASURY',NULL,'SUBCOLLECTOR',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('TREASURY_ADMIN','TREASURY',NULL,'TREASURY_ADMIN',NULL,1);
insert  into lguname_etracs.role(role,domain,description,sysrole,excluded,system) values ('TREASURY_REPORTS','TREASURY',NULL,'TREASURY_REPORTS',NULL,1);



INSERT INTO lguname_etracs.`jobposition_role`(jobpositionid, role, domain, sysrole) 
SELECT t.jobid, t.tagid, s.domain, t.tagid FROM lguname_etracs.`jobposition_tag` t, lguname_system.`sys_role` s
WHERE t.tagid = s.name ;






insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RULE_AUTHOR', 'BP', 'bpassessmentrule.view', 'Author Business Assessment Rules', 'bp-rule-mgmt');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RULE_AUTHOR', 'BP', 'bpbillingrule.view', 'Author BP Billing Rules', 'bp-rule-mgmt');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.submitforreview', 'Submit Business Application For Review', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.disapprove', 'Disapprove Business Application', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.approve', 'Approve Business Application', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.newtransaction', 'Create New Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.save', 'Save Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.edit', 'Edit Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.delete', 'Delete Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.submit', 'Submit Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.renewtransaction', 'Create Renew Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.addlobtransaction', 'Create Add Line of Business Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.retiretransaction', 'Create Retire Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.retiretransaction', 'Create Retire Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.capturenewtransaction', 'Create Capture New Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.capturerenewtransaction', 'Create Capture Renew Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.newtransaction', 'Create New Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.renewtransaction', 'Create Renew Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.applicationlist', 'View Application Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'BP', 'bppermit.approvedapplications', 'View Approved Business Applications', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RELEASING', 'BP', 'bppermit.forreleasepermits', 'View For Relased Permits', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bppermit.forrenewapplications', 'View Retired Applications', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'BP', 'bppermit.activepermits', 'View Active Permits', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'BP', 'bppermit.retire', 'View Retired Applications', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'BP', 'bppermit.approvedapplications', 'View Approved Business Applications', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RELEASING', 'BP', 'bppermit.forreleasepermits', 'View For Relased Permits', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bppermit.forrenewapplications', 'View Retired Applications', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'BP', 'bppermit.activepermits', 'View Active Permits', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'BP', 'bppermit.retire', 'View Retired Applications', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bplicensing.renewtransaction', 'Create Renew Application Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'BP', 'bpadmin.setting', 'Manage Business Settings', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'BP', 'bpbilling.generate', 'Generate BP Billing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'BP', 'bpbilling.generate', 'Generate BP Billing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.ledger', 'Manage Business Ledger', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.ledger', 'Manage Business Ledger', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changebusinessaddress', 'Allow Change Business Address Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changebusinessaddress', 'Allow Change Business Address Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changebusinessaddress', 'Allow Change Business Address Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changeadministrator', 'Change Business Administrator', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changeadministrator', 'Change Business Administrator', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'changeadministratorlist', 'changeadministratorlist', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changepermittee', 'Allow Change Permittee Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changepermittee', 'Allow Change Permittee Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changepermittee', 'Allow Change Permittee Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changetradename', 'Allow Change Trade Name', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LICENSING', 'BP', 'bpadmin.changetradename', 'Allow Change Trade Name', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'BP', 'bpadmin.lob', 'Create View and Update Line Of Business Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'BP', 'bpadmin.lobattributes', 'Manage LOB Attributes', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'BP', 'bpadmin.lobclassification', 'Create View and Update Line Of Business Classification Transaction', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.apploblisting', 'Generate Application With LOB Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.apploblisting', 'Generate Application With LOB Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.bpcollectionreport', 'Generate Business Collection Report Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.delinquency', 'Generate Delinquency Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.delinquency', 'Generate Delinquency Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.masterlist', 'Generate Taxpayer Masterlist', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.masterlist', 'Generate Taxpayer Masterlist', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.bppermitlisting', 'bpreport.bppermitlisting', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.bppermitlisting', 'bpreport.bppermitlisting', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.comparativeassessmentlisting', 'bpreport.comparativeassessmentlisting', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.comparativeassessmentlisting', 'bpreport.comparativeassessmentlisting', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.comparativelisting', 'bpreport.comparativelisting', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.comparativelisting', 'bpreport.comparativelisting', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.lobcountlisting', 'Generate LOB Count Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.lobcountlisting', 'Generate LOB Count Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.loblisting', 'Generate Line of Business Listing', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.lobtoplisting', 'Generate Top N Businesses', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('BP_REPORTS', 'BP', 'bpreport.lobtoplisting', 'Generate Top N Businesses', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'BP', 'bpadmin.bprulevariable', 'Manage Business Variable', 'bp2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RULE_AUTHOR', 'CTC', 'ctcassessmentrule.view', 'Manage CTC Rules', 'ctc-rule-mgmt');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RULE_AUTHOR', 'CTC', 'ctcassessmentrule.view', 'Manage CTC Rules', 'ctc-rule-mgmt');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'entity.mapping', 'Map Entity Data', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.create', 'Create Individual Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.create', 'Create Individual Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.create', 'Create Individual Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.create', 'Create Individual Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.edit', 'Edit Individual Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.delete', 'Delete Individual Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'entity.mapping', 'Map Entity Data', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.enrollonline', 'individual.enrollonline', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'individual.enrollonline', 'individual.enrollonline', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'juridical.create', 'Create Juridical Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'juridical.create', 'Create Juridical Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'juridical.create', 'Create Juridical Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'juridical.create', 'Create Juridical Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'juridical.edit', 'Edit Juridical Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'juridical.delete', 'Delete Juridical Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'entity.mapping', 'Map Entity Data', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'entity.manage', 'Manage Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'multiple.create', 'Create Multiple Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'multiple.create', 'Create Multiple Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'multiple.create', 'Create Multiple Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'multiple.create', 'Create Multiple Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'multiple.edit', 'Edit Multiple Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'multiple.delete', 'Delete Multiple Entity', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ENTITY_ENCODER', 'ENTITY', 'entity.mapping', 'Map Entity Data', 'etracs2-entity');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('RULE_AUTHOR', 'RPT', 'rptbillingrule.view', 'View RPT Billing Rules', 'rpt-rule-mgmt');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'annotation.create', 'annotation.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'annotation.create', 'annotation.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'annotation.create', 'annotation.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPROVER', 'RPT', 'annotation.approve', 'Approve Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelannotation.create', 'Create Cancel Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelannotation.view', 'View Cancel Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPROVER', 'RPT', 'cancelannotation.approve', 'Approve Cancel Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'cancelannotationmgmt.view', 'Manage Cancelled Annotations', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'cancelannotationmgmt.view', 'Manage Cancelled Annotations', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelannotation.open', 'Open Cancel Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'annotationmgmt.view', 'Manage Annotations', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'annotationmgmt.view', 'Manage Annotations', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'annotationmgmt.view', 'Manage Annotations', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'annotation.create', 'annotation.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'annotation.view', 'View Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelannotation.create', 'Create Cancel Annotation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'batchgr.create', 'batchgr.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'batchgr.create', 'batchgr.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rysetting.view', 'View General Revision Year Setting', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelfaas.create', 'Create Cancel FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelfaas.create', 'Create Cancel FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPROVER', 'RPT', 'cancelfaas.approve', 'Approve Cancel FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'cancelfaasmgt.view', 'View Cancel FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SHARED', 'RPT', 'cancelfaasmgt.view', 'View Cancel FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelfaasmgt.create', 'Create Cancel FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'cancelfaasmgt.open', 'Open Cancel FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'canceltdreasons.view', 'View Cancel TD Reasons', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'canceltdreasons.view', 'View Cancel TD Reasons', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'canceltdreasons.create', 'Create Cancel TD Reasons', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'canceltdreasons.edit', 'Edit Cancel TD Reasons', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'canceltdreasons.delete', 'Delete Cancel TD Reasons', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidation.view', 'View Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidation.view', 'View Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidation.view', 'View Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidation.view', 'View Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidation.view', 'View Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidation.submit', 'Submit Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CITY_ASSESSOR', 'RPT', 'consolidation.disapprove', 'Disapprove Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CITY_ASSESSOR', 'RPT', 'consolidation.approve', 'Approve Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MUNICIPAL_ASSESSOR', 'RPT', 'consolidation.submitToProvince', 'Disapprove by Province Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'consolidation.disapproveByProvince', 'Disapprove by Province Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'consolidation.approveByProvince', 'Approve By Province Consolidation', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidationmgt.view', 'View Consolidation Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidationmgt.view', 'View Consolidation Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidationmgt.view', 'View Consolidation Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidationmgt.create', 'Create Consolidation Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'consolidationmgt.view', 'View Consolidation Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'exemptiontypes.view', 'View Exemption Types', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'exemptiontypes.view', 'View Exemption Types', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'exemptiontypes.create', 'Create Exemption Types', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'exemptiontypes.edit', 'Edit Exemption Types', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'exemptiontypes.delete', 'Delete Exemption Types', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faas.create', 'Create FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faas.open', 'Open FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'datacapture.create', 'Create FAAS Data Capture', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'transfer.create', 'Create Transfer of Ownership', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'transfer.create', 'Create Transfer of Ownership', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'transfer.create', 'Create Transfer of Ownership', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'changeclassification.create', 'changeclassification.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'changetaxability.create', 'changetaxability.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'correction.create', 'Create Correction of Entry', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'newdiscovery.create', 'Create New Discovery', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'multipleclaim.create', 'Create Multiple Claim', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'reassessment.create', 'Create Reassessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'generalrevision.create', 'generalrevision.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faas.submit', 'Submit FAAS for approval', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faas.submit', 'Submit FAAS for approval', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faas.delete', 'Delete FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faas.disapprove', 'Dispprove FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CITY_ASSESSOR', 'RPT', 'faas.approve', 'Approve FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.approve', 'Approve FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MUNICIPAL_ASSESSOR', 'RPT', 'faas.submittoprovince', 'Submit to Province FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.disapprove', 'Dispprove FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.disapprove', 'Dispprove FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.approvebyprovince', 'Approve By Province FAAS', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'realpropertyupdate.create', 'Create Real Property Update Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'realpropertyupdate.create', 'Create Real Property Update Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'realpropertyupdate.open', 'Open Real Property Update Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'realpropertyupdate.edit', 'Edit Real Property Update Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPROVER', 'RPT', 'realpropertyupdate.approve', 'Approve Real Property Update Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'realpropertyupdate.view', 'View Real Property Update Listing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'titleupdate.create', 'Update Title Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'titleupdate.create', 'Update Title Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'titleupdate.open', 'Open Title Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'titleupdate.edit', 'Edit Title Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPROVER', 'RPT', 'titleupdate.approve', 'Approve Title Information', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'titleupdate.view', 'View Title Update Listing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faasmgt.view', 'View FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faasmgt.view', 'View FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faasmgt.view', 'View FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faasmgt.create', 'Create FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faasmgt.view', 'View FAAS Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'fortransmittalmgmt.view', 'For Transmittal Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'fortransmittalmgmt.view', 'For Transmittal Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'kindofbldg.view', 'View Kind of Building', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'kindofbldg.view', 'View Kind of Building', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'kindofbldg.create', 'Create Kind of Building', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'kindofbldg.edit', 'Edit Kind of Building', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'kindofbldg.delete', 'Delete Kind of Building', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rysetting.view', 'View General Revision Year Setting', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'machines.view', 'View Machines', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'machines.view', 'View Machines', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'machines.create', 'Create Machines', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'machines.edit', 'Edit Machines', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'machines.delete', 'Delete Machines', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rysetting.view', 'View General Revision Year Setting', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'materials.view', 'View Materials', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'materials.view', 'View Materials', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'materials.create', 'Create Materials', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'materials.edit', 'Edit Materials', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'materials.delete', 'Delete Materials', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'miscitems.view', 'View Miscellaneous Items', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'miscitems.view', 'View Miscellaneous Items', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'miscitems.create', 'Create Miscellaneous Items', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'miscitems.edit', 'Edit Miscellaneous Items', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'miscitems.delete', 'Delete Miscellaneous Items', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rysetting.view', 'View General Revision Year Setting', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'plantstrees.view', 'View Plants and Trees', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'plantstrees.view', 'View Plants and Trees', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'plantstrees.create', 'Create Plants and Trees', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'plantstrees.edit', 'Edit Plants and Trees', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'plantstrees.delete', 'Delete Plants and Trees', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rysetting.view', 'View General Revision Year Setting', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'propertyclassification.view', 'View Property Classifications', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'propertyclassification.view', 'View Property Classifications', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'propertyclassification.create', 'Create Property Classification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'propertyclassification.edit', 'Edit Property Classification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'propertyclassification.delete', 'Delete Property Classification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'propertypayer.view', 'View Property Payers', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'propertypayer.view', 'View Property Payers', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.abstractrptcollection', 'Generate Abstract of Realty Tax Collection', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.accomplishmentrpa', 'Generate Accomplishment Report on Real Property Assessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.accomplishmentrpa', 'Generate Accomplishment Report on Real Property Assessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.annotationlisting', 'Generate Annotation Listing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.jat', 'Generate Journal of Assessment Transaction', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.jat', 'Generate Journal of Assessment Transaction', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.assessmentroll', 'Generate Assessment Roll', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.assessmentroll', 'Generate Assessment Roll', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.assessmentroll', 'Generate Assessment Roll', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.brgyshare', 'Generate Barangay Share', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativeav', 'Generate Comparative Data On Assessed Value', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativeav', 'Generate Comparative Data On Assessed Value', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativemv', 'Generate Comparative Data on Market Value', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativemv', 'Generate Comparative Data on Market Value', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativerpucount', 'Generate Comparative Data on RPU Count', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativerpucount', 'Generate Comparative Data on RPU Count', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.rptcompromisepayment', 'landtax.rptcompromisepayment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.jat', 'Generate Journal of Assessment Transaction', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.jat', 'Generate Journal of Assessment Transaction', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.jat', 'Generate Journal of Assessment Transaction', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.masterlist', 'Generate Master List of Real Property', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.notice', 'Generate Notice of Assessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.notice', 'Generate Notice of Assessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.notice', 'Generate Notice of Assessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.noticeofdelinquency', 'Generate Realty Tax Notice of Delinquency', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.orf', 'Generate Ownership Record Form', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.orf', 'Generate Ownership Record Form', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.orf', 'Generate Ownership Record Form', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.reportonrpa', 'Report on Real Property Assessment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativemv', 'Generate Comparative Data on Market Value', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.rptc', 'Real Property Tax Collection', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'xlandtax.rptc', 'xlandtax.rptc', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.rptdelinquency', 'Generate Realty Tax Delinquency Listing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.rptclearance', 'Realty Tax Clearance', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'landtax.rptclearance', 'Realty Tax Clearance', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.tmcr', 'Generate TMCR Report', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.tmcr', 'Generate TMCR Report', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('ASSESSOR_REPORTS', 'RPT', 'rptreport.tmcr', 'Generate TMCR Report', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'RPT', 'rptreceipt.batch', 'Batch Realty Tax Collection', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptbilling.generate', 'Generate Real Property Billing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptbilling.generate', 'Generate Real Property Billing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptbilling.generate', 'Generate Real Property Billing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptbilling.printbill', 'Print Real Property Billing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptbilling.previewbill', 'Preview Real Property Billing', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'rptcertifications.open', 'RPT Certifications Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'rptcertifications.open', 'RPT Certifications Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'landholding.view', 'RPT Certifications Land Holding View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'landholding.view', 'RPT Certifications Land Holding View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'landholding.create', 'RPT Certifications Land Holding Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'landholding.create', 'RPT Certifications Land Holding Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.open', 'RPT Certifications Latest Exist Property Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.view', 'RPT Certifications Latest Exist Property View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.create', 'RPT Certifications Latest Exist Property Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.create', 'RPT Certifications Latest Exist Property Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'rptcertification_list.view', 'RPT Certifications List View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'rptcertification_list.view', 'RPT Certifications List View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.open', 'RPT Certifications Multiple Property Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.view', 'RPT Certifications Multiple Property View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.create', 'RPT Certifications Multiple Property Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.create', 'RPT Certifications Multiple Property Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.open', 'Open No Encumbrance Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.view', 'View No Encumbrance Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.create', 'Create No Encumbrance Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.create', 'Create No Encumbrance Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.open', 'RPT Certifications No Improvement By TD No Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.view', 'RPT Certifications No Improvement By TD No View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.create', 'RPT Certifications No Improvement By TD No Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.create', 'RPT Certifications No Improvement By TD No Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.open', 'RPT Certifications No Improvement Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.view', 'RPT Certifications No Improvement View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.create', 'RPT Certifications No Improvement Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.create', 'RPT Certifications No Improvement Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.open', 'RPT Certifications No Property Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.view', 'RPT Certifications No Property View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.create', 'RPT Certifications No Property Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.create', 'RPT Certifications No Property Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'ownership.open', 'Open Ownership Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'ownership.view', 'View Ownership Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAICERTIFICATION_ISSUANCESER', 'RPT', 'ownership.create', 'Create Ownership Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'ownership.create', 'Create Ownership Certification', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.open', 'RPT Certifications With Improvement By TD No Open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.view', 'RPT Certifications With Improvement By TD No View', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.create', 'RPT Certifications With Improvement By TD No Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.create', 'RPT Certifications With Improvement By TD No Create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.open', 'withimproveland.open', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.view', 'withimproveland.view', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.create', 'withimproveland.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.create', 'withimproveland.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.create', 'Create Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.open', 'Open Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.create', 'Create Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.create', 'Create Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.edit', 'Edit Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.submit', 'Submit Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.submitforapproval', 'Submit For Approval Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.approve', 'Approve Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.delete', 'Delete Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.preview', 'Preview Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.print', 'Print Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.view', 'Manage Compromise Agreemtns', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.view', 'Manage Compromise Agreemtns', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.create', 'Create Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptcompromise.open', 'Open Compromise Agreement', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.approve', 'Approve RPT Ledger', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.capturepayment', 'Capture RPT Ledger Payment', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.previewbill', 'Preview RPT Bill', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.printbill', 'Print RPT Bill', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.view', 'View RPT Ledger', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.view', 'View RPT Ledger', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.view', 'View RPT Ledger', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LANDTAX', 'RPT', 'rptledger.open', 'Open RPT Ledger', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rptparameters.view', 'View RPT Parameters', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rptparameters.create', 'Create RPT Parameters', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rptparameters.edit', 'Edit RPT Parameters', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rptparameters.delete', 'Delete RPT Parameters', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'rptsetting.view', 'View RPT Settings', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'structures.view', 'View Structures', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'structures.create', 'Create Structures', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'structures.edit', 'Edit Structures', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'RPT', 'structures.delete', 'Delete Structures', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivision.view', 'View Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivision.view', 'View Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivision.create', 'Create Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivision.create', 'Create Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivision.view', 'View Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivision.submit', 'Submit Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CITY_ASSESSOR', 'RPT', 'subdivision.disapprove', 'Disapprove Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CITY_ASSESSOR', 'RPT', 'subdivision.approve', 'Approve Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MUNICIPAL_ASSESSOR', 'RPT', 'subdivision.submitToProvince', 'Submit to Province Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'subdivision.disapproveByProvince', 'Disapprove By Province Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('PROVINCIAL_ASSESSOR', 'RPT', 'subdivision.approveByProvince', 'Appry By Province Subdivision', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivisionmgt.view', 'View Subdivision Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivisionmgt.view', 'View Subdivision Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'subdivisionmgt.open', 'Open Subdivision Management', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal.create', 'Create FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal.open', 'Open FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal.create', 'Create FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal.create', 'Create FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal.export', 'Export FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import.create', 'Import FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import.open', 'View Imported FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import.create', 'Import FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import.create', 'Import FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import_mgmt.view', 'Manage Import FAAS Transmittals', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import_mgmt.view', 'Manage Import FAAS Transmittals', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import.create', 'Import FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_import.open', 'View Imported FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_mgmt.view', 'Manage FAAS Transmittals', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal_mgmt.view', 'Manage FAAS Transmittals', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'faastransmittal.create', 'faastransmittal.create', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rpt_transmittal.open', 'Open FAAS Transmittal', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'truecopy.view', 'View Certified True Copy', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'truecopy.create', 'Create Certified True Copy', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('APPRAISER', 'RPT', 'rptutil.modifypin', 'Access Modify PIN Utility', 'rpt2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'account.view', 'View Chart of Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'account.view', 'View Chart of Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'af.viewlist', 'View Accountable Form Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'af.viewlist', 'View Accountable Form Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'af.create', 'Create Accountable Form', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'af.edit', 'Edit Accountable Form', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'af.delete', 'Delete Accountable Form', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'af.approve', 'Approve Accountable Form', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.viewlist', 'afcontrol.viewlist', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.delete', 'afcontrol.delete', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.changemode', 'AF Control Change Mode', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.transfer', 'Transfer AF Control', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.adjustqty', 'Adjust AF Control Quantity (NonSerial)', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.assignto', 'Assign AF Control', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.activate', 'Activate AF Control', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.activate', 'Activate AF Control', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afcontrol.activate', 'Activate AF Control', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afinventory.view', 'View AF Inventory Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afinventory.view', 'View AF Inventory Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'afinventory.view', 'View AF Inventory Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bank.view', 'View Bank Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bank.view', 'View Bank Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bank.create', 'Create Bank', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bank.edit', 'Edit Bank', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bank.delete', 'Delete Bank', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bankacct.view', 'View Bank Account Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bankacct.view', 'View Bank Account Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bankacct.create', 'Create Bank Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bankacct.edit', 'Edit Bank Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bankacct.delete', 'Delete Bank Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'bankacct.approve', 'Approve Bank Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.view', 'View Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapturemgmt.view', 'View Batch Capture Management', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapturemgmt.view', 'View Batch Capture Management', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.open', 'Open Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.view', 'View Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'bookletcollection.create', 'bookletcollection.create', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_online', 'Create Online Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_offline', 'Create Offline Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_capture', 'Create Capture Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_online', 'Create Online Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_offline', 'Create Offline Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_capture', 'Create Capture Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_online', 'Create Online Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_offline', 'Create Offline Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'collection.create_capture', 'Create Capture Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.view', 'View Collection Groups', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.view', 'View Collection Groups', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.create', 'Create Collection Group', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.edit', 'Edit Collection Group', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.delete', 'Delete Collection Group', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectionsetting.manage', 'Manage Collection Setting', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectionsetting.manage', 'Manage Collection Setting', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiontype.viewlist', 'View Collection Type Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiontype.viewlist', 'View Collection Type Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiontype.create', 'Create Collection Type', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiontype.edit', 'Edit Collection Type', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'collectiontype.delete', 'Delete Collection Type', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CASHIER', 'TREASURY', 'deposit.create', 'Create Deposit Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CASHIER', 'TREASURY', 'deposit.create', 'Create Deposit Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CASHIER', 'TREASURY', 'deposit.create', 'Create Deposit Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CASHIER', 'TREASURY', 'deposit.viewlist', 'View Deposit Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('CASHIER', 'TREASURY', 'deposit.viewlist', 'View Deposit Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'form60.setup', 'Setup Form 60 Report', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'fund.viewlist', 'View Fund Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'fund.viewlist', 'View Fund Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'fund.create', 'Create Fund', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'fund.edit', 'Edit Fund', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'fund.delete', 'Delete Fund', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'fund.approve', 'Approve Fund', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacct.viewlist', 'View Income Account Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacct.viewlist', 'View Income Account Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacct.create', 'Create Income Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacct.edit', 'Edit Income Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacct.delete', 'Delete Income Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacct.approve', 'Approve Income Account', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.viewlist', 'View Income Account Group Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.viewlist', 'View Income Account Group Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.create', 'Create Income Account Group', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.delete', 'Delete Income Account Group', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'iraf.viewlist', 'View IRAF Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'iraf.viewlist', 'View IRAF Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'iraf.create', 'Create IRAF', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'iraf.edit', 'Edit IRAF', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'iraf.delete', 'Delete IRAF', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'iraf.approve', 'Approve IRAF', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.create', 'Create Liquidation', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.create', 'Create Liquidation', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.create', 'Create Liquidation', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.viewlist', 'View Liquidation Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.viewlist', 'View Liquidation Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.viewlist', 'View Liquidation Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidationmulti.create', 'Create Multi-Cashier Liquidation', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidationmulti.create', 'Create Multi-Cashier Liquidation', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidationmulti.create', 'Create Multi-Cashier Liquidation', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'postcapturereceipt.create', 'Create Post Capture Receipt', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'postcapturereceipt.create', 'Create Post Capture Receipt', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'postcapturereceipt.create', 'Create Post Capture Receipt', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'postcapturereceipt.viewlist', 'View Post Capture Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'postcapturereceipt.viewlist', 'View Post Capture Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'postcapturereceipt.create', 'Create Post Capture Receipt', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'receipt.inquire', 'Inquire Receipt Information', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.create', 'Create Remittance', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.create', 'Create Remittance', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.create', 'Create Remittance', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.create', 'Create Remittance', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.import', 'Import Remittance', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SUBCOLLECTOR', 'TREASURY', 'remittance_subcollector.create', 'remittance_subcollector.create', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('SUBCOLLECTOR', 'TREASURY', 'remittance_subcollector.create', 'remittance_subcollector.create', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.viewlist', 'View Remittance Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.viewlist', 'View Remittance Listing', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'remittance.create', 'Create Remittance', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'riv_lgu.create', 'Create LGU RIV', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'riv.collector', 'Create RIV (Collector)', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'riv.salecreate', 'Create RIV (SALE)', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('AFO', 'TREASURY', 'riv_lgu.create', 'Create LGU RIV', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'riv.create', 'Create RIV', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'riv.salecreate', 'Create RIV (SALE)', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.craaf', 'CRAAF Report', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenue', 'Generate Statement of Revenue', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.incomeaccount', 'Income Account Report', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.reportofcollection', 'Report of Collection', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.reportofcollection2', 'Report of Collection 2', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.reportofcollection2', 'Report of Collection 2', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenue', 'Generate Statement of Revenue', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenueexpanded', 'tcreport.statementofrevenueexpanded', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenue', 'Generate Statement of Revenue', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenue', 'Generate Statement of Revenue', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('TREASURY_ADMIN', 'TREASURY', 'treasurymgmt.view', 'View Treasury Management', 'tc2');
insert into lguname_system..sys_role_permission ( sysrole, domain, action, title, module )  values ('COLLECTOR', 'TREASURY', 'receipt.viewissued', 'View Issued Receipt Listing', 'tc2');




use lguname_etracs;

alter table afcontrol change column afinventorycreditid afinventorycreditid varchar(50) null;




/*================================================================================================
**
** Addition of quarterlyInstallmentPaidOnTime fact 
**
================================================================================================*/

ALTER TABLE rptledger ADD COLUMN quarterlyinstallmentpaidontime INT NULL;

/* default to unpaid */
UPDATE rptledger SET quarterlyinstallmentpaidontime = 1;

/* set if currently year has payment */
UPDATE rptledger SET 
	quarterlyinstallmentpaidontime = 0
WHERE lastyearpaid < 2012 ;




use lguname_system;

ALTER TABLE sys_role_permission CHANGE COLUMN `key` ACTION VARCHAR(100) NOT NULL  ;


