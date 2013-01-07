SET FOREIGN_KEY_CHECKS=0;


ALTER TABLE lguname_etracs.noticeofassessment 
	ADD COLUMN ry INT NOT NULL,
	ADD COLUMN EXTENDED TEXT ;
	
	
CREATE TABLE lguname_etracs.`rptcompromise` (                                                                       
                 `objid` VARCHAR(50) NOT NULL,                                                                      
                 `docstate` VARCHAR(25) NOT NULL,                                                                   
                 `txnno` VARCHAR(10) DEFAULT NULL,                                                                  
                 `txndate` DATE DEFAULT NULL,                                                                       
                 `faasid` VARCHAR(50) NOT NULL,                                                                     
                 `ledgerid` VARCHAR(50) NOT NULL,                                                                   
                 `info` TEXT NOT NULL,                                                                              
                 `signatories` TEXT NOT NULL,                                                                       
                 `extended` TEXT,                                                                                   
                 PRIMARY KEY  (`objid`),                                                                            
                 KEY `FK_rptcompromise_rptledger` (`ledgerid`),                                                     
                 KEY `FK_rptcompromise_faas` (`faasid`),                                                            
                 CONSTRAINT `FK_rptcompromise_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),             
                 CONSTRAINT `FK_rptcompromise_rptledger` FOREIGN KEY (`ledgerid`) REFERENCES `rptledger` (`objid`)  
               ) ENGINE=INNODB DEFAULT CHARSET=latin1 ;


CREATE TABLE lguname_etracs.`rptcompromise_list` (                                                                       
                      `objid` VARCHAR(50) NOT NULL,                                                                           
                      `docstate` VARCHAR(25) NOT NULL,                                                                        
                      `txnno` VARCHAR(25) DEFAULT NULL,                                                                       
                      `txndate` DATE DEFAULT NULL,                                                                            
                      `faasid` VARCHAR(50) NOT NULL,                                                                          
                      `ledgerid` VARCHAR(50) NOT NULL,                                                                        
                      `enddate` DATE NOT NULL,                                                                                
                      `term` INT(11) NOT NULL,                                                                                
                      `numofinstallment` DECIMAL(18,2) NOT NULL,                                                              
                      `amount` DECIMAL(18,2) NOT NULL,                                                                        
                      `amtpaid` DECIMAL(18,2) NOT NULL,                                                                       
                      `downpaymentrate` DECIMAL(10,4) NOT NULL,                                                               
                      `downpayment` DECIMAL(18,2) NOT NULL,                                                                   
                      `amtforinstallment` DECIMAL(18,2) NOT NULL,                                                             
                      `firstpartyname` VARCHAR(150) NOT NULL,                                                                 
                      `firstpartytitle` VARCHAR(50) NOT NULL,                                                                 
                      `secondpartyrepresentative` VARCHAR(150) NOT NULL,                                                      
                      `secondpartyname` VARCHAR(1000) NOT NULL,                                                               
                      `secondpartyaddress` VARCHAR(150) NOT NULL,                                                             
                      `downpaymentrequired` INT(11) NOT NULL,                                                                 
                      `cypaymentrequired` INT(11) NOT NULL,                                                                   
                      `startyear` INT(11) NOT NULL,                                                                           
                      `startqtr` INT(11) NOT NULL,                                                                            
                      `endyear` INT(11) NOT NULL,                                                                             
                      `endqtr` INT(11) NOT NULL,                                                                              
                      PRIMARY KEY  (`objid`),                                                                                 
                      KEY `FK_rptcompromise_list_faas` (`faasid`),                                                            
                      KEY `FK_rptcompromise_list_rptledger` (`ledgerid`),                                                     
                      CONSTRAINT `FK_rptcompromise_list` FOREIGN KEY (`objid`) REFERENCES `rptcompromise` (`objid`),          
                      CONSTRAINT `FK_rptcompromise_list_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),             
                      CONSTRAINT `FK_rptcompromise_list_rptledger` FOREIGN KEY (`ledgerid`) REFERENCES `rptledger` (`objid`)  
                    ) ENGINE=INNODB DEFAULT CHARSET=latin1    ;



CREATE TABLE lguname_etracs.`rptcompromise_installment` (                                                                                       
                             `objid` VARCHAR(50) NOT NULL,                                                                                                  
                             `rptcompromiseid` VARCHAR(50) NOT NULL,                                                                                        
                             `ledgerid` VARCHAR(50) NOT NULL,                                                                                               
                             `installmentno` INT(11) NOT NULL,                                                                                              
                             `duedate` DATE NOT NULL,                                                                                                       
                             `amount` DECIMAL(18,2) NOT NULL,                                                                                               
                             `amtpaid` DECIMAL(18,2) NOT NULL,                                                                                              
                             `fullypaid` INT(11) NOT NULL,                                                                                                  
                             PRIMARY KEY  (`objid`),                                                                                                        
                             KEY `FK_rptcompromise_installment_rptcompromise` (`rptcompromiseid`),                                                          
                             KEY `FK_rptcompromise_installment_rptledger` (`ledgerid`),                                                                     
                             CONSTRAINT `FK_rptcompromise_installment_rptcompromise` FOREIGN KEY (`rptcompromiseid`) REFERENCES `rptcompromise` (`objid`),  
                             CONSTRAINT `FK_rptcompromise_installment_rptledger` FOREIGN KEY (`ledgerid`) REFERENCES `rptledger` (`objid`)                  
                           ) ENGINE=INNODB DEFAULT CHARSET=latin1   ;

CREATE TABLE lguname_etracs.`rptcompromise_item` (                                                                                       
                      `objid` VARCHAR(50) NOT NULL,                                                                                           
                      `rptcompromiseid` VARCHAR(50) NOT NULL,                                                                                 
                      `iyear` INT(11) NOT NULL,                                                                                               
                      `iqtr` INT(11) NOT NULL,                                                                                                
                      `ledgerid` VARCHAR(50) NOT NULL,                                                                                        
                      `faasid` VARCHAR(50) NOT NULL,                                                                                          
                      `assessedvalue` DECIMAL(18,2) NOT NULL,                                                                                 
                      `tdno` VARCHAR(30) NOT NULL,                                                                                            
                      `classcode` VARCHAR(10) NOT NULL,                                                                                       
                      `actualusecode` VARCHAR(10) NOT NULL,                                                                                   
                      `basic` DECIMAL(18,2) NOT NULL,                                                                                         
                      `basicpaid` DECIMAL(18,2) NOT NULL,                                                                                     
                      `basicint` DECIMAL(18,2) NOT NULL,                                                                                      
                      `basicintpaid` DECIMAL(18,2) NOT NULL,                                                                                  
                      `sef` DECIMAL(18,2) NOT NULL,                                                                                           
                      `sefpaid` DECIMAL(18,2) NOT NULL,                                                                                       
                      `sefint` DECIMAL(18,2) NOT NULL,                                                                                        
                      `sefintpaid` DECIMAL(18,2) NOT NULL,                                                                                    
                      `total` DECIMAL(18,2) DEFAULT NULL,                                                                                     
                      `fullypaid` INT(11) NOT NULL,                                                                                           
                      PRIMARY KEY  (`objid`),                                                                                                 
                      KEY `FK_rptcompromise_item_faas` (`faasid`),                                                                            
                      KEY `FK_rptcompromise_item_rptledger` (`ledgerid`),                                                                     
                      KEY `FK_rptcompromise_item_rptcompromise` (`rptcompromiseid`),                                                          
                      CONSTRAINT `FK_rptcompromise_item_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),                             
                      CONSTRAINT `FK_rptcompromise_item_rptcompromise` FOREIGN KEY (`rptcompromiseid`) REFERENCES `rptcompromise` (`objid`),  
                      CONSTRAINT `FK_rptcompromise_item_rptledger` FOREIGN KEY (`ledgerid`) REFERENCES `rptledger` (`objid`)                  
                    ) ENGINE=INNODB DEFAULT CHARSET=latin1  ;



CREATE TABLE lguname_etracs.`rptcompromise_credit` (                                                                                               
                        `objid` VARCHAR(50) NOT NULL,                                                                                                     
                        `receiptid` VARCHAR(50) NOT NULL,                                                                                                 
                        `ledgerid` VARCHAR(50) NOT NULL,                                                                                                  
                        `rptcompromiseid` VARCHAR(50) NOT NULL,                                                                                           
                        `installmentid` VARCHAR(50) DEFAULT NULL,                                                                                         
                        `itemid` VARCHAR(50) DEFAULT NULL,                                                                                                
                        `collectorname` VARCHAR(100) NOT NULL,                                                                                            
                        `collectortitle` VARCHAR(50) NOT NULL,                                                                                            
                        `orno` VARCHAR(15) NOT NULL,                                                                                                      
                        `ordate` DATE NOT NULL,                                                                                                           
                        `amount` DECIMAL(18,2) NOT NULL,                                                                                                  
                        `voided` INT(11) NOT NULL,                                                                                                        
                        PRIMARY KEY  (`objid`),                                                                                                           
                        KEY `FK_rptcompromise_credit_rptledger` (`ledgerid`),                                                                             
                        KEY `FK_rptcompromise_credit_rptcompromise` (`rptcompromiseid`),                                                                  
                        KEY `FK_rptcompromise_credit_installment` (`installmentid`),                                                                      
                        KEY `FK_rptcompromise_credit` (`receiptid`),                                                                                      
                        CONSTRAINT `FK_rptcompromise_credit` FOREIGN KEY (`receiptid`) REFERENCES `receipt` (`objid`),                                    
                        CONSTRAINT `FK_rptcompromise_credit_installment` FOREIGN KEY (`installmentid`) REFERENCES `rptcompromise_installment` (`objid`),  
                        CONSTRAINT `FK_rptcompromise_credit_rptcompromise` FOREIGN KEY (`rptcompromiseid`) REFERENCES `rptcompromise` (`objid`),          
                        CONSTRAINT `FK_rptcompromise_credit_rptledger` FOREIGN KEY (`ledgerid`) REFERENCES `rptledger` (`objid`)                          
                      ) ENGINE=INNODB DEFAULT CHARSET=latin1   ;





ALTER TABLE lguname_etracs.rptledger ADD COLUMN undercompromised INT NOT NULL;

UPDATE lguname_etracs.rptledger SET undercompromised = 0 WHERE undercompromised IS NULL; 











-- -------




/* FAAS Attachment */
ALTER TABLE lguname_etracs.faasattachment ADD absolutefilename VARCHAR(300) NULL;



/* SubFund with Required Bank Account fund support */
ALTER TABLE lguname_etracs.fund ADD bankacctrequired INT NULL;

UPDATE lguname_etracs.fund SET bankacctrequired = 1 ;


ALTER TABLE lguname_etracs.receiptlist 
	ADD COLUMN totalpayment DECIMAL(16,2),
	ADD COLUMN remarks VARCHAR(200),
	ADD COLUMN series INT,
	ADD COLUMN `extended` TEXT;
	
UPDATE lguname_etracs.receiptlist rl, lguname_etracs.receipt r SET
		rl.extended = r.extended,
		rl.totalpayment = rl.amount 
WHERE rl.objid = r.objid;
		
ALTER TABLE lguname_etracs.paymentitem ADD COLUMN `extended` TEXT;

SET FOREIGN_KEY_CHECKS=0;	
	
ALTER TABLE lguname_etracs.receiptlist DROP FOREIGN KEY FK_receiptlist_receipt;

ALTER TABLE lguname_etracs.receiptitem DROP FOREIGN KEY FK_receiptitem_receipt;


ALTER TABLE lguname_etracs.receiptitem  
	ADD CONSTRAINT FK_receiptitem_receiptlist FOREIGN KEY (receiptid) REFERENCES lguname_etracs.receiptlist(objid);

ALTER TABLE lguname_etracs.paymentitem DROP FOREIGN KEY FK_paymentitem_receipt;

ALTER TABLE lguname_etracs.paymentitem 
	ADD CONSTRAINT FK_paymentitem_receiptlist FOREIGN KEY(receiptid) REFERENCES lguname_etracs.receiptlist(objid);


ALTER TABLE lguname_etracs.afcontrol 
	ADD COLUMN assignedtoid VARCHAR(50) NULL,
	ADD COLUMN assignedtoname VARCHAR(100) NULL,
	ADD COLUMN assignedtotitle VARCHAR(50) NULL;
	
UPDATE lguname_etracs.afcontrol SET 
	assignedtoid = collectorid,
	assignedtoname = collectorname,
	assignedtotitle = collectortitle;
	
	
ALTER TABLE lguname_etracs.batchcapture 
	ADD COLUMN collectortitle VARCHAR(50),
	ADD COLUMN encodedbytitle VARCHAR(50);


UPDATE lguname_etracs.batchcapture b, lguname_etracs.jobposition j SET
	b.encodedbytitle = j.title 
WHERE b.encodedbyid = j.assigneeid;


UPDATE lguname_etracs.batchcapture b, lguname_etracs.jobposition j  SET
	b.collectortitle = j.title 
WHERE b.collectorid = j.assigneeid;

UPDATE lguname_etracs.receiptlist SET 
	capturedbyid = collectorid,
	capturedbyname = collectorname,
	capturedbytitle = collectorname
WHERE capturedbyid IS NULL OR capturedbyname IS NULL;



/* =========================================================
** DENORMALIZE REMITTANCE SUPPORT 
============================================================ */

ALTER TABLE lguname_etracs.remittancelist 
	ADD COLUMN dtposted DATE NOT NULL,
	ADD COLUMN denominations VARCHAR(600) NULL;

UPDATE lguname_etracs.remittancelist SET dtposted = txndate;


ALTER TABLE lguname_etracs.remittancelist DROP FOREIGN KEY FK_remittancelist;

ALTER TABLE lguname_etracs.receiptlist DROP FOREIGN KEY FK_receiptlist_remittance; 


ALTER TABLE lguname_etracs.remittedform DROP FOREIGN KEY FK_remittance;


/*-- rename remittance related tables --*/

RENAME TABLE lguname_etracs.remittance TO  lguname_etracs.xremittance;

RENAME TABLE lguname_etracs.remittancelist TO lguname_etracs.remittance;




ALTER TABLE lguname_etracs.receiptlist
	ADD CONSTRAINT FK_receiptlist_remittance FOREIGN KEY (remittanceid) REFERENCES lguname_etracs.remittance(objid);


ALTER TABLE lguname_etracs.remittedform
	ADD CONSTRAINT FK_remittedform_remittance FOREIGN KEY (remittanceid) REFERENCES lguname_etracs.remittance(objid);



/* =================================================================== 
** Normalize Liquidation  
=================================================================== */
ALTER TABLE lguname_etracs.liquidationlist 
	ADD COLUMN dtposted DATE NOT NULL,
	ADD COLUMN denominations VARCHAR(600);

UPDATE lguname_etracs.liquidationlist SET 
	dtposted = txndate,
	denominations = '[]';


ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY FK_liquidationlist_deposit;
ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidationlist_liquidation;
ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidation;
ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidationlist_personnel;
ALTER TABLE lguname_etracs.liquidationlist DROP FOREIGN KEY  FK_liquidationlist_personnel_depositedbyid;




-- Rename related tables 
RENAME TABLE lguname_etracs.liquidation TO lguname_etracs.xliquidation;
RENAME TABLE lguname_etracs.liquidationlist TO lguname_etracs.liquidation;



ALTER TABLE lguname_etracs.liquidation
	ADD CONSTRAINT FK_liquidation_deposit FOREIGN KEY(depositid) REFERENCES lguname_etracs.deposit(objid),
	ADD CONSTRAINT FK_liquidation_personnel FOREIGN KEY(liquidatingofficerid) REFERENCES lguname_etracs.personnel(objid),
	ADD CONSTRAINT FK_liquidation_personnel_depositedbyid FOREIGN KEY(depositedbyid) REFERENCES lguname_etracs.personnel(objid);


ALTER TABLE lguname_etracs.remittance DROP FOREIGN KEY FK_remittance_liquidation;
ALTER TABLE lguname_etracs.remittance DROP FOREIGN KEY  FK_remittance_personnel;
ALTER TABLE lguname_etracs.remittance DROP FOREIGN KEY  FK_remittance_personnel_lqid;



ALTER TABLE lguname_etracs.remittance 
	ADD CONSTRAINT FK_remittance_liquidation FOREIGN KEY(liquidationid) REFERENCES lguname_etracs.liquidation( objid ),
	ADD CONSTRAINT FK_remittance_personnel FOREIGN KEY(collectorid) REFERENCES lguname_etracs.personnel( objid ),
	ADD CONSTRAINT FK_remittance_personnel_lqid FOREIGN KEY(liquidatingofficerid) REFERENCES lguname_etracs.personnel( objid );



INSERT INTO lguname_system.sys_module(NAME, title, permissions)
VALUES('rpt2-reports', 'RPT Reports', '[[action:"rptreport.pdaprpta100", title:"Generate PDAP-RPTA 100 Report",]]');

INSERT INTO lguname_system.sys_roleclass_module
VALUES('RPT', 'rpt2-reports');



ALTER TABLE lguname_etracs.rptpaymentmanual 
	ADD COLUMN basicadv DECIMAL(16,2),
	ADD COLUMN basicadvdisc DECIMAL(16,2),
	ADD COLUMN sefadv DECIMAL(16,2),
	ADD COLUMN sefadvdisc DECIMAL(16,2);

UPDATE lguname_etracs.rptpaymentmanual SET 
	basicadv = 0.0, basicadvdisc = 0.0, 
	sefadv = 0.0, sefadvdisc = 0.0;
	

ALTER TABLE lguname_etracs.rptledger ADD COLUMN municityname VARCHAR(50);

SET FOREIGN_KEY_CHECKS=1;