use lguname_etracs
go

/*========================================================================
**
** Version 2.1.007
**
========================================================================*/

if not exists(select * from sys.columns 
            where Name = 'ry' and Object_ID = Object_ID('noticeofassessment'))    
begin
    ALTER TABLE noticeofassessment ADD ry INT NOT NULL
end
go

if not exists(select * from sys.columns 
            where Name = 'extended' and Object_ID = Object_ID('noticeofassessment'))    
begin
    ALTER TABLE noticeofassessment ADD extended TEXT
end
go	

/****** Object:  Table [rptcompromise]    Script Date: 01/09/2013 13:21:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO



if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('rptcompromise') AND type in ('U'))
begin
	CREATE TABLE [rptcompromise](
		[objid] [varchar](50) NOT NULL,
		[docstate] [varchar](25) NOT NULL,
		[txnno] [varchar](10) NULL,
		[txndate] [date] NULL,
		[faasid] [varchar](50) NOT NULL,
		[ledgerid] [varchar](50) NOT NULL,
		[info] [text] NOT NULL,
		[signatories] [text] NOT NULL,
		[extended] [text] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[objid] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	ALTER TABLE [rptcompromise]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_faas] FOREIGN KEY([faasid])
	REFERENCES [faas] ([objid])
	
	ALTER TABLE [rptcompromise] CHECK CONSTRAINT [FK_rptcompromise_faas]
	
	ALTER TABLE [rptcompromise]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_rptledger] FOREIGN KEY([ledgerid])
	REFERENCES [rptledger] ([objid])
	
	ALTER TABLE [rptcompromise] CHECK CONSTRAINT [FK_rptcompromise_rptledger]
	
	ALTER TABLE [rptcompromise] ADD  DEFAULT (NULL) FOR [txnno]
	
	ALTER TABLE [rptcompromise] ADD  DEFAULT (NULL) FOR [txndate]
end
go

	

if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('rptcompromise_installment') AND type in ('U'))
begin	
	CREATE TABLE [rptcompromise_installment](
		[objid] [varchar](50) NOT NULL,
		[rptcompromiseid] [varchar](50) NOT NULL,
		[ledgerid] [varchar](50) NOT NULL,
		[installmentno] [int] NOT NULL,
		[duedate] [date] NOT NULL,
		[amount] [decimal](18, 2) NOT NULL,
		[amtpaid] [decimal](18, 2) NOT NULL,
		[fullypaid] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
	(
		[objid] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	SET ANSI_PADDING OFF
	
	ALTER TABLE [rptcompromise_installment]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_installment_rptcompromise] FOREIGN KEY([rptcompromiseid])
	REFERENCES [rptcompromise] ([objid])
	
	ALTER TABLE [rptcompromise_installment] CHECK CONSTRAINT [FK_rptcompromise_installment_rptcompromise]
	
	ALTER TABLE [rptcompromise_installment]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_installment_rptledger] FOREIGN KEY([ledgerid])
	REFERENCES [rptledger] ([objid])
	
	ALTER TABLE [rptcompromise_installment] CHECK CONSTRAINT [FK_rptcompromise_installment_rptledger]
end
go


if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('rptcompromise_list') AND type in ('U'))
begin
	CREATE TABLE [rptcompromise_list](
		[objid] [varchar](50) NOT NULL,
		[docstate] [varchar](25) NOT NULL,
		[txnno] [varchar](25) NULL,
		[txndate] [date] NULL,
		[faasid] [varchar](50) NOT NULL,
		[ledgerid] [varchar](50) NOT NULL,
		[enddate] [date] NOT NULL,
		[term] [int] NOT NULL,
		[numofinstallment] [decimal](18, 2) NOT NULL,
		[amount] [decimal](18, 2) NOT NULL,
		[amtpaid] [decimal](18, 2) NOT NULL,
		[downpaymentrate] [decimal](10, 4) NOT NULL,
		[downpayment] [decimal](18, 2) NOT NULL,
		[amtforinstallment] [decimal](18, 2) NOT NULL,
		[firstpartyname] [varchar](150) NOT NULL,
		[firstpartytitle] [varchar](50) NOT NULL,
		[secondpartyrepresentative] [varchar](150) NOT NULL,
		[secondpartyname] [varchar](1000) NOT NULL,
		[secondpartyaddress] [varchar](150) NOT NULL,
		[downpaymentrequired] [int] NOT NULL,
		[cypaymentrequired] [int] NOT NULL,
		[startyear] [int] NOT NULL,
		[startqtr] [int] NOT NULL,
		[endyear] [int] NOT NULL,
		[endqtr] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
	(
		[objid] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	SET ANSI_PADDING OFF
	
	ALTER TABLE [rptcompromise_list]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_list] FOREIGN KEY([objid])
	REFERENCES [rptcompromise] ([objid])
	
	ALTER TABLE [rptcompromise_list] CHECK CONSTRAINT [FK_rptcompromise_list]
	
	ALTER TABLE [rptcompromise_list]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_list_faas] FOREIGN KEY([faasid])
	REFERENCES [faas] ([objid])
	
	ALTER TABLE [rptcompromise_list] CHECK CONSTRAINT [FK_rptcompromise_list_faas]
	
	ALTER TABLE [rptcompromise_list]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_list_rptledger] FOREIGN KEY([ledgerid])
	REFERENCES [rptledger] ([objid])
	
	ALTER TABLE [rptcompromise_list] CHECK CONSTRAINT [FK_rptcompromise_list_rptledger]
	
	ALTER TABLE [rptcompromise_list] ADD  DEFAULT (NULL) FOR [txnno]
	
	ALTER TABLE [rptcompromise_list] ADD  DEFAULT (NULL) FOR [txndate]
end
go	



if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('rptcompromise_item') AND type in ('U'))
begin
	CREATE TABLE [rptcompromise_item](
		[objid] [varchar](50) NOT NULL,
		[rptcompromiseid] [varchar](50) NOT NULL,
		[iyear] [int] NOT NULL,
		[iqtr] [int] NOT NULL,
		[ledgerid] [varchar](50) NOT NULL,
		[faasid] [varchar](50) NOT NULL,
		[assessedvalue] [decimal](18, 2) NOT NULL,
		[tdno] [varchar](30) NOT NULL,
		[classcode] [varchar](10) NOT NULL,
		[actualusecode] [varchar](10) NOT NULL,
		[basic] [decimal](18, 2) NOT NULL,
		[basicpaid] [decimal](18, 2) NOT NULL,
		[basicint] [decimal](18, 2) NOT NULL,
		[basicintpaid] [decimal](18, 2) NOT NULL,
		[sef] [decimal](18, 2) NOT NULL,
		[sefpaid] [decimal](18, 2) NOT NULL,
		[sefint] [decimal](18, 2) NOT NULL,
		[sefintpaid] [decimal](18, 2) NOT NULL,
		[total] [decimal](18, 2) NULL,
		[fullypaid] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
	(
		[objid] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]


	SET ANSI_PADDING OFF

	ALTER TABLE [rptcompromise_item]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_item_faas] FOREIGN KEY([faasid])
	REFERENCES [faas] ([objid])

	ALTER TABLE [rptcompromise_item] CHECK CONSTRAINT [FK_rptcompromise_item_faas]

	ALTER TABLE [rptcompromise_item]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_item_rptcompromise] FOREIGN KEY([rptcompromiseid])
	REFERENCES [rptcompromise] ([objid])

	ALTER TABLE [rptcompromise_item] CHECK CONSTRAINT [FK_rptcompromise_item_rptcompromise]

	ALTER TABLE [rptcompromise_item]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_item_rptledger] FOREIGN KEY([ledgerid])
	REFERENCES [rptledger] ([objid])

	ALTER TABLE [rptcompromise_item] CHECK CONSTRAINT [FK_rptcompromise_item_rptledger]

	ALTER TABLE [rptcompromise_item] ADD  DEFAULT (NULL) FOR [total]
end
go



if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('rptcompromise_credit') AND type in ('U'))
begin
	CREATE TABLE [rptcompromise_credit](
		[objid] [varchar](50) NOT NULL,
		[receiptid] [varchar](50) NOT NULL,
		[ledgerid] [varchar](50) NOT NULL,
		[rptcompromiseid] [varchar](50) NOT NULL,
		[installmentid] [varchar](50) NULL,
		[itemid] [varchar](50) NULL,
		[collectorname] [varchar](100) NOT NULL,
		[collectortitle] [varchar](50) NOT NULL,
		[orno] [varchar](15) NOT NULL,
		[ordate] [date] NOT NULL,
		[amount] [decimal](18, 2) NOT NULL,
		[voided] [int] NOT NULL,
		[paidby] [varchar](100) NULL,
		[paidbyaddress] [varchar](100) NULL,
		[mode] [varchar](25) NULL,
	PRIMARY KEY CLUSTERED 
	(
		[objid] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	SET ANSI_PADDING OFF
	
	ALTER TABLE [rptcompromise_credit]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_credit_installment] FOREIGN KEY([installmentid])
	REFERENCES [rptcompromise_installment] ([objid])
	
	ALTER TABLE [rptcompromise_credit] CHECK CONSTRAINT [FK_rptcompromise_credit_installment]
	
	ALTER TABLE [rptcompromise_credit]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_credit_rptcompromise] FOREIGN KEY([rptcompromiseid])
	REFERENCES [rptcompromise] ([objid])

	ALTER TABLE [rptcompromise_credit] CHECK CONSTRAINT [FK_rptcompromise_credit_rptcompromise]

	ALTER TABLE [rptcompromise_credit]  WITH CHECK ADD  CONSTRAINT [FK_rptcompromise_credit_rptledger] FOREIGN KEY([ledgerid])
	REFERENCES [rptledger] ([objid])

	ALTER TABLE [rptcompromise_credit] CHECK CONSTRAINT [FK_rptcompromise_credit_rptledger]

	ALTER TABLE [rptcompromise_credit] ADD  DEFAULT (NULL) FOR [installmentid]

	ALTER TABLE [rptcompromise_credit] ADD  DEFAULT (NULL) FOR [itemid]
end
go	




if not exists(select * from sys.columns 
            where Name = 'undercompromised' and Object_ID = Object_ID('rptledger'))    
begin
    ALTER TABLE rptledger ADD undercompromised INT NULL
end
go

UPDATE rptledger SET undercompromised = 0 WHERE undercompromised IS NULL
go


/*========================================================================
**
** Version 2.1.008
**
========================================================================*/

if not exists(select * from sys.columns 
            where Name = 'administratorname' and Object_ID = Object_ID('subdivisionland'))    
begin
    ALTER TABLE subdivisionland ADD administratorname VARCHAR(200)
end
go

if not exists(select * from sys.columns 
            where Name = 'administratoraddress' and Object_ID = Object_ID('subdivisionland'))    
begin
    ALTER TABLE subdivisionland ADD administratoraddress VARCHAR(200)
end
go
	

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('personnel_txncode') AND type in (N'U'))
BEGIN
	CREATE TABLE personnel_txncode(
		personnelid VARCHAR(50) NOT NULL PRIMARY KEY,
		txncode VARCHAR(10) NOT NULL
	 )
END
go
 
 
/*========================================================================
**
** Version 2.1.009
**
========================================================================*/

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('faasattachment') and Name = 'absolutefilename')
begin
    ALTER TABLE faasattachment ADD absolutefilename VARCHAR(300) NULL
end
go


/* SubFund with Required Bank Account fund support */
if not exists(select * from sys.columns 
            where Object_ID = Object_ID('fund') and Name = 'bankacctrequired')
begin
    ALTER TABLE fund ADD bankacctrequired INT NULL
end
go

UPDATE fund SET bankacctrequired = 1
go


if not exists(select * from sys.columns 
            where Object_ID = Object_ID('receiptlist') and Name = 'totalpayment')
begin
    ALTER TABLE receiptlist ADD totalpayment DECIMAL(16,2)
end
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('receiptlist') and Name = 'remarks')
begin
    ALTER TABLE receiptlist ADD remarks VARCHAR(200)
end
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('receiptlist') and Name = 'series')
begin
    ALTER TABLE receiptlist ADD series INT
end
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('receiptlist') and Name = 'extended')
begin
    ALTER TABLE receiptlist ADD extended TEXT
end
go

	
UPDATE rl SET
		rl.extended = r.extended,
		rl.totalpayment = rl.amount 
from receiptlist rl, receipt r 		
WHERE rl.objid = r.objid
go
		
if not exists(select * from sys.columns 
            where Object_ID = Object_ID('paymentitem') and Name = 'extended')
begin
    ALTER TABLE paymentitem ADD extended TEXT
end		
go


if exists (SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'FK_receiptlist_receipt') 
             AND parent_object_id = OBJECT_ID(N'receiptlist'))
BEGIN
    ALTER TABLE receiptlist DROP FK_receiptlist_receipt
END
go

if exists (SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'FK_receiptitem_receipt') 
             AND parent_object_id = OBJECT_ID(N'receiptitem'))
BEGIN
   ALTER TABLE receiptitem DROP FK_receiptitem_receipt 
END
go


if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('receiptitem') 
             AND object_id = OBJECT_ID('FK_receiptitem_receiptlist'))
begin
	ALTER TABLE receiptitem  
		ADD CONSTRAINT FK_receiptitem_receiptlist FOREIGN KEY (receiptid) REFERENCES receiptlist(objid)
end		
go	

if exists (SELECT * FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'FK_paymentitem_receipt') 
             AND parent_object_id = OBJECT_ID(N'paymentitem'))
BEGIN
   ALTER TABLE paymentitem DROP FK_paymentitem_receipt
END
go

if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('paymentitem') 
             AND object_id = OBJECT_ID('FK_paymentitem_receiptlist'))
begin
	ALTER TABLE paymentitem 
		ADD CONSTRAINT FK_paymentitem_receiptlist FOREIGN KEY(receiptid) REFERENCES receiptlist(objid)
end		
go	
	
if not exists(select * from sys.columns 
            where Object_ID = Object_ID('afcontrol') and Name = 'assignedtoid')
begin
    ALTER TABLE afcontrol ADD assignedtoid VARCHAR(50) NULL
end
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('afcontrol') and Name = 'assignedtoname')
begin
    ALTER TABLE afcontrol ADD assignedtoname VARCHAR(100) NULL
end
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('afcontrol') and Name = 'assignedtotitle')
begin
    ALTER TABLE afcontrol ADD assignedtotitle VARCHAR(50) NULL
end
go
	
UPDATE afcontrol SET 
	assignedtoid = collectorid,
	assignedtoname = collectorname,
	assignedtotitle = collectortitle
go	
	
if not exists(select * from sys.columns 
            where Object_ID = Object_ID('batchcapture') and Name = 'collectortitle')
begin
    ALTER TABLE batchcapture ADD collectortitle VARCHAR(50)
end	
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('batchcapture') and Name = 'encodedbytitle')
begin
    ALTER TABLE batchcapture ADD encodedbytitle VARCHAR(50)
end
go


UPDATE b SET
	b.encodedbytitle = j.title 
from batchcapture b, jobposition j 	
WHERE b.encodedbyid = j.assigneeid
go


UPDATE b SET
	b.collectortitle = j.title 
from batchcapture b, jobposition j 	
WHERE b.collectorid = j.assigneeid
go 

UPDATE receiptlist SET 
	capturedbyid = collectorid,
	capturedbyname = collectorname,
	capturedbytitle = collectorname
WHERE capturedbyid IS NULL OR capturedbyname IS NULL
go



/* =========================================================
** NORMALIZE REMITTANCE SUPPORT 
============================================================ */
if not exists(select * from lguname_etracs.sys.columns 
            where Object_ID = Object_ID('remittancelist') and Name = 'dtposted')
begin
    ALTER TABLE remittancelist ADD dtposted DATE NULL
end
go

if not exists(select * from lguname_etracs.sys.columns 
            where Object_ID = Object_ID('remittancelist') and Name = 'denominations')
begin
    ALTER TABLE remittancelist ADD denominations VARCHAR(600) NULL
end
go

IF not EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('remittancelist') AND type in (N'U'))
begin
	alter table remittancelist add dtposted datetime 
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('remittancelist') AND type in (N'U'))
begin
	UPDATE remittancelist SET dtposted = txndate
end
go


if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittancelist')
             AND object_id = OBJECT_ID('FK_remittancelist'))
begin
   ALTER TABLE remittancelist DROP FK_remittancelist
end
go

if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE object_id = OBJECT_ID('FK_receiptlist_remittance') 
             AND parent_object_id = OBJECT_ID('receiptlist'))
begin
   ALTER TABLE receiptlist DROP FK_receiptlist_remittance
end


if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittedform') 
             AND object_id = OBJECT_ID('FK_remittance'))
begin
   ALTER TABLE remittedform DROP FK_remittance
end
go




if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('revenue') 
             AND object_id = OBJECT_ID('FK_revenue_remittance'))
begin
   ALTER TABLE revenue DROP FK_revenue_remittance
end
go

if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('revenue') 
             AND object_id = OBJECT_ID('FK_revenue_liquidation'))
begin
   ALTER TABLE revenue DROP FK_revenue_liquidation
end
go

if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('revenue') 
             AND object_id = OBJECT_ID('FK_revenue_deposit'))
begin
   ALTER TABLE revenue DROP FK_revenue_deposit
end
go


if exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidationrcd') 
             AND object_id = OBJECT_ID('FK_liquidationrcd'))
begin
   ALTER TABLE liquidationrcd  DROP FK_liquidationrcd;	
end
go
	
	

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('xremittance') AND type in (N'U'))
begin
	exec sp_rename remittance, xremittance
	exec sp_rename remittancelist, remittance
end
go

if not exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('receiptlist') 
             AND object_id = OBJECT_ID('FK_receiptlist_remittance'))
begin
   ALTER TABLE receiptlist
	ADD CONSTRAINT FK_receiptlist_remittance FOREIGN KEY (remittanceid) 
	REFERENCES remittance(objid)
end
go	

if not exists (SELECT * FROM lguname_etracs.sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittedform') 
             AND object_id = OBJECT_ID('FK_remittedform_remittance'))
begin
   ALTER TABLE remittedform
	ADD CONSTRAINT FK_remittedform_remittance FOREIGN KEY (remittanceid) 
	REFERENCES remittance(objid)

end
go	





/* =================================================================== 
** Normalize Liquidation  
=================================================================== */

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('liquidationlist') AND type in (N'U'))
begin
	if not exists(select * from sys.columns 
            where Object_ID = Object_ID('liquidationlist') and Name = 'dtposted')
	begin
		ALTER TABLE liquidationlist ADD dtposted DATE NULL
	end
	
	if not exists(select * from sys.columns 
            where Object_ID = Object_ID('liquidationlist') and Name = 'denominations')
	begin
		ALTER TABLE liquidationlist ADD denominations VARCHAR(600)
	end
	
end
go
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('liquidationlist') AND type in (N'U'))
begin
	UPDATE liquidationlist SET dtposted = txndate, denominations = '[]'
end	
go


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidationlist') 
           AND object_id = OBJECT_ID('FK_liquidationlist_deposit'))
begin
   ALTER TABLE liquidationlist DROP FK_liquidationlist_deposit
end
go


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidationlist') 
           AND object_id = OBJECT_ID('FK_liquidationlist_liquidation'))
begin
   ALTER TABLE liquidationlist DROP FK_liquidationlist_liquidation
end
go


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidationlist') 
           AND object_id = OBJECT_ID('FK_liquidation'))
begin
   ALTER TABLE liquidationlist DROP FK_liquidation;
end
go


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidationlist') 
           AND object_id = OBJECT_ID('FK_liquidationlist_personnel'))
begin
   ALTER TABLE liquidationlist DROP FK_liquidationlist_personnel
end
go


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidationlist') 
           AND object_id = OBJECT_ID('FK_liquidationlist_personnel_depositedbyid'))
begin
   ALTER TABLE liquidationlist DROP FK_liquidationlist_personnel_depositedbyid
end
go


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('xliquidation') AND type in (N'U'))
begin
	exec sp_rename liquidation, xliquidation
	exec sp_rename liquidationlist, liquidation
end
go



if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidation') 
             AND object_id = OBJECT_ID('FK_liquidation_deposit'))
begin
   ALTER TABLE liquidation 
	ADD CONSTRAINT FK_liquidation_deposit 
	FOREIGN KEY(depositid) REFERENCES deposit(objid)
end
go
	
if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidation') 
             AND object_id = OBJECT_ID('FK_liquidation_personnel'))
begin
   ALTER TABLE liquidation 
	ADD CONSTRAINT FK_liquidation_personnel FOREIGN KEY(liquidatingofficerid) 
	REFERENCES personnel(objid)
end	
go

if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('liquidation') 
             AND object_id = OBJECT_ID('FK_liquidation_personnel_depositedbyid'))
begin
   ALTER TABLE liquidation 
	ADD CONSTRAINT FK_liquidation_personnel_depositedbyid FOREIGN KEY(depositedbyid) 
	REFERENCES personnel(objid)
end	
go


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittance') 
             AND object_id = OBJECT_ID('FK_remittance_liquidation'))
begin
   ALTER TABLE remittance DROP FK_remittance_liquidation
end
go

if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittance') 
             AND object_id = OBJECT_ID('FK_remittance_personnel'))
begin
   ALTER TABLE remittance DROP FK_remittance_personnel
end

if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittance') 
             AND object_id = OBJECT_ID('FK_remittance_personnel_lqid'))
begin
   ALTER TABLE remittance DROP FK_remittance_personnel_lqid
end
go



if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittance') 
             AND object_id = OBJECT_ID('FK_remittance_liquidation'))
begin
   ALTER TABLE remittance ADD CONSTRAINT FK_remittance_liquidation 
	FOREIGN KEY(liquidationid) REFERENCES liquidation( objid )
end 
go
	

if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittance') 
             AND object_id = OBJECT_ID('FK_remittance_personnel'))
begin
   ALTER TABLE remittance ADD CONSTRAINT FK_remittance_personnel 
	FOREIGN KEY(collectorid) REFERENCES personnel( objid )
end	
go
	

if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('remittance') 
             AND object_id = OBJECT_ID('FK_remittance_personnel_lqid'))
begin
   ALTER TABLE remittance ADD CONSTRAINT FK_remittance_personnel_lqid 
	FOREIGN KEY(liquidatingofficerid) REFERENCES personnel( objid )
end
go


use lguname_system
go

DELETE FROM sys_roleclass_module WHERE module = 'rpt2-reports'
go

DELETE FROM sys_module WHERE name = 'rpt2-reports'
go

INSERT INTO lguname_system..sys_module(NAME, title, permissions)
VALUES('rpt2-reports', 'RPT Reports', '[[action:"rptreport.pdaprpta100", title:"Generate PDAP-RPTA 100 Report",]]')
go


INSERT INTO lguname_system..sys_roleclass_module
VALUES('RPT', 'rpt2-reports')
go


use lguname_etracs
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('rptpaymentmanual') and Name = 'basicadv')
begin
    ALTER TABLE rptpaymentmanual ADD basicadv DECIMAL(16,2)
    ALTER TABLE rptpaymentmanual ADD basicadvdisc DECIMAL(16,2)
    ALTER TABLE rptpaymentmanual ADD sefadv DECIMAL(16,2)
    ALTER TABLE rptpaymentmanual ADD sefadvdisc DECIMAL(16,2)
end
go

UPDATE rptpaymentmanual SET 
	basicadv = 0.0, basicadvdisc = 0.0, 
	sefadv = 0.0, sefadvdisc = 0.0
WHERE basicadv is null
go	


	
if not exists(select * from sys.columns 
            where Object_ID = Object_ID('rptledger') and Name = 'municityname')
begin
    ALTER TABLE rptledger ADD municityname VARCHAR(50)
end
go




if not exists(select * from sys.columns 
            where Object_ID = Object_ID('noticeofdelinquency') and Name = 'docstate')
begin
    ALTER TABLE noticeofdelinquency
		ADD docstate VARCHAR(15) NULL,
		doctype VARCHAR(25) NULL,
		opener VARCHAR(35) NULL,
		parentid VARCHAR(50) NULL,
		pin VARCHAR(50) NULL,
		basic DECIMAL(18, 2) NULL,
		basicdisc DECIMAL(18, 2) NULL,
		basicint DECIMAL(18, 2) NULL,
		sef DECIMAL(18, 2) NULL,
		sefdisc DECIMAL(18, 2) NULL,
		sefint DECIMAL(18, 2) NULL,
		currentqtr INT NULL,
		receivedby VARCHAR(50) NULL,
		receiveddate DATE NULL,
		delinquentyr INT NULL,
		delinquentqtr INT
		
		 CREATE TABLE noticeofdelinquencysetting (         
		  objid varchar(50) NOT NULL,                     
		  noticeofdelinquency integer default '0',    
		  noofdaysexpirednod integer default '0',     
		  secondtracer integer default '0',           
		  noofdaysexpiredst integer default '0',      
		  finaldemand integer default '0',            
		  noofdaysexpiredfd integer default '0',      
		  warrantoflevy integer default '0',          
		  noofdaysexpiredwol integer default '0',     
		  noticeofpublication integer default '0',    
		  noofdaysexpirednopas integer default '0',   
		  certofsaleofproperty integer default '0',   
		  noofdaysexpiredcsdrp integer default '0',   
		  noticeofredemption integer default '0',     
		  noofdaysexpirednor integer default '0',  
		  advancecomputation integer default '0',     
		  PRIMARY KEY  (objid)                            
		)	
end
go 

 


	  
  




/*========================================================================
**
** Version 2.2.000
**
========================================================================*/

DELETE FROM lguname_system..rule_package WHERE type = 'facts'
go


use lguname_etracs
go


if not exists(select * from sys.columns 
            where Object_ID = Object_ID('rptsetting') and Name = 'allowreassessmentwithbalance')
begin
    ALTER TABLE rptsetting ADD allowreassessmentwithbalance INT NULL
end
go

UPDATE rptsetting SET allowreassessmentwithbalance = 0 
    WHERE allowreassessmentwithbalance IS NULL
go    

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('rptsetting') and Name = 'allowchangedepreciationwithbalance')
begin
    ALTER TABLE rptsetting ADD allowchangedepreciationwithbalance INT NULL
end
go

UPDATE rptsetting SET allowchangedepreciationwithbalance = 0
go





IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('remittance_subcollector') AND type in (N'U'))
begin
	CREATE TABLE remittance_subcollector (
		objid VARCHAR(50) NOT NULL,
		schemaname VARCHAR(50) NOT NULL,
		schemaversion VARCHAR(5) NOT NULL,
		docstate VARCHAR(20) NOT NULL,
		txnno VARCHAR(20) NOT NULL,
		txndate DATE NOT NULL,
		collectorname VARCHAR(50) NOT NULL,
		amount DECIMAL(10, 2) NULL,
		collectorid VARCHAR(50) NOT NULL,
		collectortitle VARCHAR(50) NULL,
		totalcash DECIMAL(10, 2) NULL,
		totalotherpayment DECIMAL(10, 2) NULL,
		remittanceid VARCHAR(50) NULL,
		remittanceno VARCHAR(15) NULL,
		remittancedate DATE NULL,
		remittanceofficerid VARCHAR(50) NULL,
		remittanceofficername VARCHAR(50) NULL,
		remittanceofficertitle VARCHAR(50) NULL,
		info TEXT NULL,
		PRIMARY KEY  (objid)
	)
	
	ALTER TABLE receiptlist ADD sc_remittanceid VARCHAR(50) NULL
end
go



UPDATE receiptlist SET 
	capturedbyid = collectorid,
	capturedbyname = collectorname,
	capturedbytitle = collectorname
WHERE capturedbyid IS NULL OR capturedbyname IS NULL
go



use lguname_system
go

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('sys_role') AND type in (N'U'))
begin
	CREATE TABLE sys_role (
	  name VARCHAR(50) NOT NULL ,
	  domain VARCHAR(50) NOT NULL,
	  PRIMARY KEY  (NAME,domain)
	)
end
go


if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('sys_role_permission') AND type in ('U'))
begin
	CREATE TABLE sys_role_permission (
	  sysrole VARCHAR(50) NOT NULL,
	  domain VARCHAR(50) NOT NULL,
	  action VARCHAR(50) NOT NULL,
	  title VARCHAR(50) DEFAULT NULL,
	  module VARCHAR(50) DEFAULT NULL,
	  PRIMARY KEY  (sysrole,domain,ACTION)
	) 
end
go


if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('sys_role_permission') 
             AND object_id = OBJECT_ID('FK_sys_role_permission_sys_role'))
begin
	ALTER TABLE lguname_system..sys_role_permission with NOCHECK 
		ADD CONSTRAINT FK_sys_role_permission_sys_role FOREIGN KEY (sysrole, domain) REFERENCES sys_role (NAME, domain)
end
go		



use lguname_etracs
go

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('orgtype') and Name = N'system')
begin
	ALTER TABLE orgtype ADD [system] INT NULL
	UPDATE orgtype SET [system] = 0
	UPDATE orgtype SET [system] = 1 WHERE NAME='BARANGAY'
end
go	



if  exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('sys_inbox') AND type in ('U'))
begin
	DROP table sys_inbox
	DROP TABLE sys_processedinbox
	DROP TABLE sys_outbox
	DROP TABLE sys_processedoutbox
end 
go


use lguname_system
go

if exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('sys_inbox') AND type in ('U'))
begin
	DROP TABLE sys_inbox
	DROP TABLE sys_outbox
end
go	

if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('sys_inbox') AND type in ('U'))
begin
	CREATE TABLE sys_inbox
	(
		objid VARCHAR(50) PRIMARY KEY,
		schemaname VARCHAR(50) NOT NULL,
		docstate VARCHAR(50) NULL,
		senderid VARCHAR(50) NOT NULL,
		receiverid VARCHAR(50) NOT NULL,
		sender VARCHAR(255) NULL,
		receiver VARCHAR(255) NULL,
		subject VARCHAR(255) NULL,
		dtposted DATETIME NOT NULL,
		type VARCHAR(100) NOT NULL,
		data TEXT NULL,
		message VARCHAR(255) NULL 
	)
end
go	


if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('sys_outbox') AND type in ('U'))
begin
	CREATE TABLE lguname_system..sys_outbox
	(
		objid VARCHAR(50) PRIMARY KEY,
		schemaname VARCHAR(50) NOT NULL,
		docstate VARCHAR(50) NULL,
		senderid VARCHAR(50) NOT NULL,
		receiverid VARCHAR(50) NOT NULL,
		sender VARCHAR(255) NULL,
		receiver VARCHAR(255) NULL,
		subject VARCHAR(255) NULL,
		dtposted DATETIME NOT NULL,
		type VARCHAR(100) NOT NULL,
		data TEXT NULL,
		message VARCHAR(255) NULL 
	)
end
go	


use lguname_etracs
go


if not exists(select * from sys.columns 
            where Object_ID = Object_ID('personnel') and Name = 'txncode')
begin
	ALTER TABLE personnel ADD txncode VARCHAR(50) NULL
end 
go	


if exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('personnel_txncode') AND type in ('U'))
begin
	UPDATE p SET
		p.txncode = pc.txncode 
	from personnel p, personnel_txncode pc	
	WHERE pc.personnelid = p.objid
	
	DROP TABLE personnel_txncode
end	
go



if exists (select * from sys.indexes where name = 'ix_jobposition_roleclass' and object_id = OBJECT_ID('jobposition'))
begin
	DROP INDEX ix_jobposition_roleclass ON jobposition
end
go

if exists (select * from sys.indexes where name = 'ix_jobposition_role' and object_id = OBJECT_ID('jobposition'))
begin
	DROP INDEX ix_jobposition_role ON jobposition
end
go

declare @command  nvarchar(1000)
declare @table nvarchar(100)
declare @column nvarchar(50)
set @table = 'jobposition'
set @column = 'roleclass'

select @command = 'ALTER TABLE ' + @table + ' drop ' + d.name
 from sys.tables t   
  join    sys.default_constraints d on d.parent_object_id = t.object_id  
  join    sys.columns c on c.object_id = t.object_id and c.column_id = d.parent_column_id
 where t.name = @table and c.name = @column 

print @command
execute (@command)
go


declare @command  nvarchar(1000)
declare @table nvarchar(100)
declare @column nvarchar(50)
set @table = 'jobposition'
set @column = 'role'

select @command = 'ALTER TABLE ' + @table + ' drop ' + d.name
 from sys.tables t   
  join    sys.default_constraints d on d.parent_object_id = t.object_id  
  join    sys.columns c on c.object_id = t.object_id and c.column_id = d.parent_column_id
 where t.name = @table and c.name = @column 

print @command
execute (@command)
go


if exists(select * from sys.columns 
            where Object_ID = Object_ID('jobposition') and Name = 'roleclass')
begin
	ALTER TABLE jobposition DROP COLUMN roleclass
end
go

if exists(select * from sys.columns 
            where Object_ID = Object_ID('jobposition') and Name = 'role')
begin
	ALTER TABLE jobposition DROP COLUMN [role]
end
go

if exists(select * from sys.columns 
            where Object_ID = Object_ID('jobposition') and Name = 'excluded')
begin
	ALTER TABLE jobposition DROP COLUMN excluded
end
go



if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('jobposition') 
             AND object_id = OBJECT_ID('FK_jobposition_role'))
begin
	ALTER TABLE jobposition DROP FK_jobposition_role
end
go	


use lguname_etracs
go


if exists(select * from sys.columns 
            where Object_ID = Object_ID('role') and Name = 'included')
begin
	ALTER TABLE [role] DROP COLUMN included
	ALTER TABLE [role] ADD domain VARCHAR(50) NULL
	ALTER TABLE [role] ADD excluded TEXT NULL
	exec sp_rename 'role.name', 'role', 'column'
	exec sp_rename 'role.roleclass', 'sysrole', 'column'
	ALTER TABLE [role] alter COLUMN description VARCHAR(255)
	ALTER TABLE [role] alter COLUMN role VARCHAR(50) NOT NULL
	ALTER TABLE [role] alter COLUMN domain VARCHAR(50) NULL
end
go	


if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('jobposition_role') 
             AND object_id = OBJECT_ID('FK_jobposition_role_role'))
begin
	alter table jobposition_role drop FK_jobposition_role_role
end
go



DECLARE @SQL VARCHAR(4000)
SET @SQL = 'ALTER TABLE role DROP CONSTRAINT |ConstraintName| '

SET @SQL = REPLACE(@SQL, '|ConstraintName|', ( SELECT   name
                                               FROM     sysobjects
                                               WHERE    xtype = 'PK'
                                                        AND parent_obj = OBJECT_ID('role')
                                             ))
EXEC (@SQL)

go

UPDATE [role] SET domain = ''
go

ALTER TABLE [role] alter COLUMN domain VARCHAR(50) not NULL
go

ALTER TABLE [role] ADD PRIMARY KEY([role], domain)
go




if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('jobposition_role') AND type in ('U'))
begin
	CREATE TABLE jobposition_role (
	  jobpositionid VARCHAR(50) NOT NULL,
	  role VARCHAR(50) NOT NULL,
	  domain VARCHAR(50) NOT NULL,
	  sysrole VARCHAR(50) NOT NULL,
	  disallowed TEXT,
	  PRIMARY KEY  (jobpositionid,role,domain)  
	) 
end
go	

if not exists (select * from sys.indexes where name = 'unique_jobposition_sysrole' and object_id = OBJECT_ID('jobposition_role'))
begin
	CREATE UNIQUE INDEX unique_jobposition_sysrole ON jobposition_role(jobpositionid,sysrole, domain)
end
go	


if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('jobposition_role') 
             AND object_id = OBJECT_ID('FK_jobposition_role_role'))
begin
	ALTER TABLE jobposition_role 
		ADD CONSTRAINT FK_jobposition_role_role FOREIGN KEY (role,domain)
		REFERENCES role(role,domain)
end
go		
	
if not exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('jobposition_role') 
             AND object_id = OBJECT_ID('FK_jobposition_role_jobposition'))
begin	
	ALTER TABLE jobposition_role 	
	  ADD CONSTRAINT FK_jobposition_role_jobposition FOREIGN KEY (jobpositionid) 
	  REFERENCES jobposition (objid)
end
go

DELETE FROM jobposition_role
go

DELETE FROM role
go






use lguname_system
go

if exists (SELECT * FROM sys.foreign_keys 
           WHERE parent_object_id = OBJECT_ID('sys_role_permission') 
             AND object_id = OBJECT_ID('FK_sys_role_permission_sys_role'))
begin
	alter table sys_role_permission drop FK_sys_role_permission_sys_role
end
go



DELETE FROM sys_role
go


INSERT  INTO sys_role(NAME,domain) VALUES ('AFO','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('APPRAISER','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('APPROVER','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('ASSESSOR_REPORTS','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('BP_REPORTS','BP');
INSERT  INTO sys_role(NAME,domain) VALUES ('CASHIER','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('CERTIFICATION_ISSUANCE','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('CITY_ASSESSOR','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('COLLECTOR','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('ENTITY_ENCODER','ENTITY');
INSERT  INTO sys_role(NAME,domain) VALUES ('LANDTAX','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('LICENSING','BP');
INSERT  INTO sys_role(NAME,domain) VALUES ('LIQUIDATING_OFFICER','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('MASTER_ENCODER','BP');
INSERT  INTO sys_role(NAME,domain) VALUES ('MASTER_ENCODER','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('MASTER_ENCODER','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('MUNICIPAL_ASSESSOR','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('PROVINCIAL_ASSESSOR','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('RELEASING','BP');
INSERT  INTO sys_role(NAME,domain) VALUES ('RULE_AUTHOR','BP');
INSERT  INTO sys_role(NAME,domain) VALUES ('RULE_AUTHOR','CTC');
INSERT  INTO sys_role(NAME,domain) VALUES ('RULE_AUTHOR','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('RULE_MANAGEMENT','RULEMGMT');
INSERT  INTO sys_role(NAME,domain) VALUES ('SHARED','BP');
INSERT  INTO sys_role(NAME,domain) VALUES ('SHARED','RPT');
INSERT  INTO sys_role(NAME,domain) VALUES ('SUBCOLLECTOR','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('TREASURY_ADMIN','TREASURY');
INSERT  INTO sys_role(NAME,domain) VALUES ('TREASURY_REPORTS','TREASURY');


use lguname_etracs
go

ALTER TABLE [role] alter COLUMN sysrole VARCHAR(50) NOT NULL
go

INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('AFO','TREASURY',NULL,'AFO',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('APPRAISER','RPT',NULL,'APPRAISER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('APPROVER','RPT',NULL,'APPROVER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('ASSESSOR_REPORTS','RPT',NULL,'ASSESSOR_REPORTS',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('BP_REPORTS','BP',NULL,'BP_REPORTS',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('CASHIER','TREASURY',NULL,'CASHIER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('CERTIFICATION_ISSUANCE','RPT',NULL,'CERTIFICATION_ISSUANCE',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('CITY_ASSESSOR','RPT',NULL,'CITY_ASSESSOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('COLLECTOR','BP',NULL,'COLLECTOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('COLLECTOR','TREASURY',NULL,'COLLECTOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('ENTITY_ENCODER','ENTITY',NULL,'ENTITY_ENCODER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('LANDTAX','RPT',NULL,'LANDTAX',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('LICENSING','BP',NULL,'LICENSING',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('LIQUIDATING_OFFICER','TREASURY',NULL,'LIQUIDATING_OFFICER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('MASTER_ENCODER','BP',NULL,'MASTER_ENCODER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('MASTER_ENCODER','RPT',NULL,'MASTER_ENCODER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('MASTER_ENCODER','TREASURY',NULL,'MASTER_ENCODER',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('MUNICIPAL_ASSESSOR','RPT',NULL,'MUNICIPAL_ASSESSOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('PROVINCIAL_ASSESSOR','RPT',NULL,'PROVINCIAL_ASSESSOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('RELEASING','BP',NULL,'RELEASING',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('RULE_AUTHOR','BP',NULL,'RULE_AUTHOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('RULE_AUTHOR','CTC',NULL,'RULE_AUTHOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('RULE_AUTHOR','RPT',NULL,'RULE_AUTHOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('RULE_MANAGEMENT','RULEMGMT',NULL,'RULE_MANAGEMENT',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('SHARED','BP',NULL,'SHARED',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('SHARED','RPT',NULL,'SHARED',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('SUBCOLLECTOR','TREASURY',NULL,'SUBCOLLECTOR',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('TREASURY_ADMIN','TREASURY',NULL,'TREASURY_ADMIN',NULL,1);
INSERT  INTO [role]([role],domain,description,sysrole,excluded,system) VALUES ('TREASURY_REPORTS','TREASURY',NULL,'TREASURY_REPORTS',NULL,1);




INSERT INTO jobposition_role(jobpositionid, role, domain, sysrole) 
SELECT DISTINCT t.jobid, t.tagid, s.domain, t.tagid 
FROM jobposition_tag t, lguname_system..sys_role s
WHERE t.tagid = s.name 
  AND EXISTS(SELECT * FROM jobposition WHERE objid = t.jobid)
ORDER BY jobid 
go



use lguname_system
go

DELETE FROM rule_package WHERE type = 'facts'
go


if exists(select * from sys.columns 
            where Object_ID = Object_ID('sys_role_permission') and Name = 'key')
begin
	exec sp_rename 'sys_role_permission.key', 'action', 'column'
	 ALTER TABLE sys_role_permission alter COLUMN [action] VARCHAR(100) NOT NULL
end
go	

ALTER TABLE sys_role_permission alter COLUMN title VARCHAR(150) NOT NULL
go

DELETE FROM sys_role_permission
go

INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('RULE_AUTHOR', 'BP', 'bpassessmentrule.view', 'Author Business Assessment Rules', 'bp-rule-mgmt');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('RULE_AUTHOR', 'BP', 'bpbillingrule.view', 'Author BP Billing Rules', 'bp-rule-mgmt');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.submitforreview', 'Submit Business Application For Review', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.disapprove', 'Disapprove Business Application', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.approve', 'Approve Business Application', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.newtransaction', 'Create New Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.save', 'Save Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.edit', 'Edit Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.delete', 'Delete Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.submit', 'Submit Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.renewtransaction', 'Create Renew Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.addlobtransaction', 'Create Add Line of Business Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.retiretransaction', 'Create Retire Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.capturenewtransaction', 'Create Capture New Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.capturerenewtransaction', 'Create Capture Renew Application Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bplicensing.applicationlist', 'View Application Listing', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('RELEASING', 'BP', 'bppermit.forreleasepermits', 'View For Relased Permits', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bppermit.forrenewapplications', 'View Retired Applications', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SHARED', 'BP', 'bppermit.activepermits', 'View Active Permits', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SHARED', 'BP', 'bppermit.retire', 'View Retired Applications', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SHARED', 'BP', 'bppermit.approvedapplications', 'View Approved Business Applications', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bpadmin.changebusinessaddress', 'Allow Change Business Address Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bpadmin.changeadministrator', 'Change Business Administrator', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bpadmin.changepermittee', 'Allow Change Permittee Transaction', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LICENSING', 'BP', 'bpadmin.changetradename', 'Allow Change Trade Name', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('BP_REPORTS', 'BP', 'bpreport.apploblisting', 'Generate Application With LOB Listing', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('BP_REPORTS', 'BP', 'bpreport.masterlist', 'Generate Taxpayer Masterlist', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('BP_REPORTS', 'BP', 'bpreport.comparativeassessmentlisting', 'bpreport.comparativeassessmentlisting', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('BP_REPORTS', 'BP', 'bpreport.lobcountlisting', 'Generate LOB Count Listing', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('BP_REPORTS', 'BP', 'bpreport.loblisting', 'Generate Line of Business Listing', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('BP_REPORTS', 'BP', 'bpreport.lobtoplisting', 'Generate Top N Businesses', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'BP', 'bpadmin.bprulevariable', 'Manage Business Variable', 'bp2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('RULE_AUTHOR', 'CTC', 'ctcassessmentrule.view', 'Manage CTC Rules', 'ctc-rule-mgmt');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'entity.mapping', 'Map Entity Data', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'individual.create', 'Create Individual Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'individual.edit', 'Edit Individual Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'individual.delete', 'Delete Individual Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'individual.enrollonline', 'individual.enrollonline', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'juridical.create', 'Create Juridical Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'juridical.edit', 'Edit Juridical Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'juridical.delete', 'Delete Juridical Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'entity.manage', 'Manage Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'multiple.create', 'Create Multiple Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'multiple.edit', 'Edit Multiple Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ENTITY_ENCODER', 'ENTITY', 'multiple.delete', 'Delete Multiple Entity', 'etracs2-entity');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('RULE_AUTHOR', 'RPT', 'rptbillingrule.view', 'View RPT Billing Rules', 'rpt-rule-mgmt');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'annotation.create', 'annotation.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPROVER', 'RPT', 'annotation.approve', 'Approve Annotation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'cancelannotation.create', 'Create Cancel Annotation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'cancelannotation.view', 'View Cancel Annotation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPROVER', 'RPT', 'cancelannotation.approve', 'Approve Cancel Annotation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SHARED', 'RPT', 'cancelannotationmgmt.view', 'Manage Cancelled Annotations', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'cancelannotation.open', 'Open Cancel Annotation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SHARED', 'RPT', 'annotationmgmt.view', 'Manage Annotations', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'annotation.view', 'View Annotation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'batchgr.create', 'batchgr.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'rysetting.view', 'View General Revision Year Setting', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'cancelfaas.create', 'Create Cancel FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPROVER', 'RPT', 'cancelfaas.approve', 'Approve Cancel FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SHARED', 'RPT', 'cancelfaasmgt.view', 'View Cancel FAAS Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'cancelfaasmgt.create', 'Create Cancel FAAS Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'cancelfaasmgt.open', 'Open Cancel FAAS Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'canceltdreasons.view', 'View Cancel TD Reasons', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'canceltdreasons.create', 'Create Cancel TD Reasons', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'canceltdreasons.edit', 'Edit Cancel TD Reasons', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'canceltdreasons.delete', 'Delete Cancel TD Reasons', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'consolidation.view', 'View Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'consolidation.submit', 'Submit Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CITY_ASSESSOR', 'RPT', 'consolidation.disapprove', 'Disapprove Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CITY_ASSESSOR', 'RPT', 'consolidation.approve', 'Approve Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MUNICIPAL_ASSESSOR', 'RPT', 'consolidation.submitToProvince', 'Disapprove by Province Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'consolidation.disapproveByProvince', 'Disapprove by Province Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'consolidation.approveByProvince', 'Approve By Province Consolidation', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'consolidationmgt.create', 'Create Consolidation Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'consolidationmgt.view', 'View Consolidation Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'exemptiontypes.view', 'View Exemption Types', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'exemptiontypes.create', 'Create Exemption Types', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'exemptiontypes.edit', 'Edit Exemption Types', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'exemptiontypes.delete', 'Delete Exemption Types', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faas.create', 'Create FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faas.open', 'Open FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'datacapture.create', 'Create FAAS Data Capture', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'transfer.create', 'Create Transfer of Ownership', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'changeclassification.create', 'changeclassification.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'changetaxability.create', 'changetaxability.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'correction.create', 'Create Correction of Entry', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'newdiscovery.create', 'Create New Discovery', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'multipleclaim.create', 'Create Multiple Claim', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'reassessment.create', 'Create Reassessment', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'generalrevision.create', 'generalrevision.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faas.submit', 'Submit FAAS for approval', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faas.delete', 'Delete FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faas.disapprove', 'Dispprove FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CITY_ASSESSOR', 'RPT', 'faas.approve', 'Approve FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.approve', 'Approve FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MUNICIPAL_ASSESSOR', 'RPT', 'faas.submittoprovince', 'Submit to Province FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.disapprove', 'Dispprove FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'faas.approvebyprovince', 'Approve By Province FAAS', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'realpropertyupdate.create', 'Create Real Property Update Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'realpropertyupdate.open', 'Open Real Property Update Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'realpropertyupdate.edit', 'Edit Real Property Update Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPROVER', 'RPT', 'realpropertyupdate.approve', 'Approve Real Property Update Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'realpropertyupdate.view', 'View Real Property Update Listing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'titleupdate.create', 'Update Title Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'titleupdate.open', 'Open Title Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'titleupdate.edit', 'Edit Title Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPROVER', 'RPT', 'titleupdate.approve', 'Approve Title Information', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'titleupdate.view', 'View Title Update Listing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faasmgt.view', 'View FAAS Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faasmgt.create', 'Create FAAS Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'fortransmittalmgmt.view', 'For Transmittal Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'kindofbldg.view', 'View Kind of Building', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'kindofbldg.create', 'Create Kind of Building', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'kindofbldg.edit', 'Edit Kind of Building', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'kindofbldg.delete', 'Delete Kind of Building', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'machines.view', 'View Machines', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'machines.create', 'Create Machines', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'machines.edit', 'Edit Machines', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'machines.delete', 'Delete Machines', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'materials.view', 'View Materials', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'materials.create', 'Create Materials', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'materials.edit', 'Edit Materials', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'materials.delete', 'Delete Materials', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'miscitems.view', 'View Miscellaneous Items', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'miscitems.create', 'Create Miscellaneous Items', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'miscitems.edit', 'Edit Miscellaneous Items', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'miscitems.delete', 'Delete Miscellaneous Items', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'plantstrees.view', 'View Plants and Trees', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'plantstrees.create', 'Create Plants and Trees', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'plantstrees.edit', 'Edit Plants and Trees', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'plantstrees.delete', 'Delete Plants and Trees', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'propertyclassification.view', 'View Property Classifications', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'propertyclassification.create', 'Create Property Classification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'propertyclassification.edit', 'Edit Property Classification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'propertyclassification.delete', 'Delete Property Classification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'propertypayer.view', 'View Property Payers', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'landtax.abstractrptcollection', 'Generate Abstract of Realty Tax Collection', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.accomplishmentrpa', 'Generate Accomplishment Report on Real Property Assessment', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.annotationlisting', 'Generate Annotation Listing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.jat', 'Generate Journal of Assessment Transaction', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.assessmentroll', 'Generate Assessment Roll', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'landtax.brgyshare', 'Generate Barangay Share', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativeav', 'Generate Comparative Data On Assessed Value', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativemv', 'Generate Comparative Data on Market Value', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.comparativerpucount', 'Generate Comparative Data on RPU Count', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'landtax.rptcompromisepayment', 'landtax.rptcompromisepayment', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.masterlist', 'Generate Master List of Real Property', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.notice', 'Generate Notice of Assessment', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.noticeofdelinquency', 'Generate Realty Tax Notice of Delinquency', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.orf', 'Generate Ownership Record Form', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.reportonrpa', 'Report on Real Property Assessment', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'landtax.rptc', 'Real Property Tax Collection', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'xlandtax.rptc', 'xlandtax.rptc', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'landtax.rptdelinquency', 'Generate Realty Tax Delinquency Listing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'landtax.rptclearance', 'Realty Tax Clearance', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('ASSESSOR_REPORTS', 'RPT', 'rptreport.tmcr', 'Generate TMCR Report', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'RPT', 'rptreceipt.batch', 'Batch Realty Tax Collection', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptbilling.generate', 'Generate Real Property Billing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptbilling.printbill', 'Print Real Property Billing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptbilling.previewbill', 'Preview Real Property Billing', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'rptcertifications.open', 'RPT Certifications Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'landholding.view', 'RPT Certifications Land Holding View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'landholding.create', 'RPT Certifications Land Holding Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.open', 'RPT Certifications Latest Exist Property Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.view', 'RPT Certifications Latest Exist Property View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'latestexistproperty.create', 'RPT Certifications Latest Exist Property Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'rptcertification_list.view', 'RPT Certifications List View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.open', 'RPT Certifications Multiple Property Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.view', 'RPT Certifications Multiple Property View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'multipleproperty.create', 'RPT Certifications Multiple Property Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.open', 'Open No Encumbrance Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.view', 'View No Encumbrance Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noencumbrance.create', 'Create No Encumbrance Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.open', 'RPT Certifications No Improvement By TD No Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.view', 'RPT Certifications No Improvement By TD No View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovementbytdno.create', 'RPT Certifications No Improvement By TD No Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.open', 'RPT Certifications No Improvement Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.view', 'RPT Certifications No Improvement View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noimprovement.create', 'RPT Certifications No Improvement Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.open', 'RPT Certifications No Property Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.view', 'RPT Certifications No Property View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'noproperty.create', 'RPT Certifications No Property Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'ownership.open', 'Open Ownership Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'ownership.view', 'View Ownership Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAICERTIFICATION_ISSUANCESER', 'RPT', 'ownership.create', 'Create Ownership Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'ownership.create', 'Create Ownership Certification', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.open', 'RPT Certifications With Improvement By TD No Open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.view', 'RPT Certifications With Improvement By TD No View', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'wimprovebytdno.create', 'RPT Certifications With Improvement By TD No Create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.open', 'withimproveland.open', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.view', 'withimproveland.view', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CERTIFICATION_ISSUANCE', 'RPT', 'withimproveland.create', 'withimproveland.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.create', 'Create Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.open', 'Open Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.edit', 'Edit Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.submit', 'Submit Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.submitforapproval', 'Submit For Approval Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.approve', 'Approve Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.delete', 'Delete Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.preview', 'Preview Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.print', 'Print Compromise Agreement', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptcompromise.view', 'Manage Compromise Agreemtns', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.approve', 'Approve RPT Ledger', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.capturepayment', 'Capture RPT Ledger Payment', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.previewbill', 'Preview RPT Bill', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.printbill', 'Print RPT Bill', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.view', 'View RPT Ledger', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LANDTAX', 'RPT', 'rptledger.open', 'Open RPT Ledger', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'rptparameters.view', 'View RPT Parameters', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'rptparameters.create', 'Create RPT Parameters', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'rptparameters.edit', 'Edit RPT Parameters', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'rptparameters.delete', 'Delete RPT Parameters', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'rptsetting.view', 'View RPT Settings', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'structures.view', 'View Structures', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'structures.create', 'Create Structures', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'structures.edit', 'Edit Structures', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'RPT', 'structures.delete', 'Delete Structures', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'subdivision.view', 'View Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'subdivision.create', 'Create Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'subdivision.submit', 'Submit Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CITY_ASSESSOR', 'RPT', 'subdivision.disapprove', 'Disapprove Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CITY_ASSESSOR', 'RPT', 'subdivision.approve', 'Approve Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MUNICIPAL_ASSESSOR', 'RPT', 'subdivision.submitToProvince', 'Submit to Province Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'subdivision.disapproveByProvince', 'Disapprove By Province Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('PROVINCIAL_ASSESSOR', 'RPT', 'subdivision.approveByProvince', 'Appry By Province Subdivision', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'subdivisionmgt.view', 'View Subdivision Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'subdivisionmgt.open', 'Open Subdivision Management', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal.create', 'Create FAAS Transmittal', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal.open', 'Open FAAS Transmittal', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal.export', 'Export FAAS Transmittal', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal_import.create', 'Import FAAS Transmittal', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal_import.open', 'View Imported FAAS Transmittal', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal_import_mgmt.view', 'Manage Import FAAS Transmittals', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rpt_transmittal_mgmt.view', 'Manage FAAS Transmittals', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'faastransmittal.create', 'faastransmittal.create', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'truecopy.view', 'View Certified True Copy', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'truecopy.create', 'Create Certified True Copy', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('APPRAISER', 'RPT', 'rptutil.modifypin', 'Access Modify PIN Utility', 'rpt2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'account.view', 'View Chart of Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'af.viewlist', 'View Accountable Form Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'af.create', 'Create Accountable Form', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'af.edit', 'Edit Accountable Form', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'af.delete', 'Delete Accountable Form', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'af.approve', 'Approve Accountable Form', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.viewlist', 'afcontrol.viewlist', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.delete', 'afcontrol.delete', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.changemode', 'AF Control Change Mode', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.transfer', 'Transfer AF Control', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.adjustqty', 'Adjust AF Control Quantity (NonSerial)', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.assignto', 'Assign AF Control', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afcontrol.activate', 'Activate AF Control', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'afinventory.view', 'View AF Inventory Information', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bank.view', 'View Bank Information', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bank.create', 'Create Bank', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bank.edit', 'Edit Bank', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bank.delete', 'Delete Bank', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bankacct.view', 'View Bank Account Information', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bankacct.create', 'Create Bank Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bankacct.edit', 'Edit Bank Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bankacct.delete', 'Delete Bank Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'bankacct.approve', 'Approve Bank Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'batchcapture.create', 'Create Batch Capture', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'batchcapture.view', 'View Batch Capture', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'batchcapturemgmt.view', 'View Batch Capture Management', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'batchcapture.open', 'Open Batch Capture', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'bookletcollection.create', 'bookletcollection.create', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'collection.create_online', 'Create Online Collection', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'collection.create_offline', 'Create Offline Collection', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'collection.create_capture', 'Create Capture Collection', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.view', 'View Collection Groups', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.create', 'Create Collection Group', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.edit', 'Edit Collection Group', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiongroup.delete', 'Delete Collection Group', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectionsetting.manage', 'Manage Collection Setting', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiontype.viewlist', 'View Collection Type Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiontype.create', 'Create Collection Type', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiontype.edit', 'Edit Collection Type', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'collectiontype.delete', 'Delete Collection Type', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CASHIER', 'TREASURY', 'deposit.create', 'Create Deposit Information', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('CASHIER', 'TREASURY', 'deposit.viewlist', 'View Deposit Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'form60.setup', 'Setup Form 60 Report', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'fund.viewlist', 'View Fund Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'fund.create', 'Create Fund', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'fund.edit', 'Edit Fund', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'fund.delete', 'Delete Fund', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'fund.approve', 'Approve Fund', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacct.viewlist', 'View Income Account Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacct.create', 'Create Income Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacct.edit', 'Edit Income Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacct.delete', 'Delete Income Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacct.approve', 'Approve Income Account', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.viewlist', 'View Income Account Group Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.create', 'Create Income Account Group', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('MASTER_ENCODER', 'TREASURY', 'incomeacctgroup.delete', 'Delete Income Account Group', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'iraf.viewlist', 'View IRAF Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'iraf.create', 'Create IRAF', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'iraf.edit', 'Edit IRAF', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'iraf.delete', 'Delete IRAF', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'iraf.approve', 'Approve IRAF', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.create', 'Create Liquidation', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidation.viewlist', 'View Liquidation Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('LIQUIDATING_OFFICER', 'TREASURY', 'liquidationmulti.create', 'Create Multi-Cashier Liquidation', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'postcapturereceipt.viewlist', 'View Post Capture Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'postcapturereceipt.create', 'Create Post Capture Receipt', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'receipt.inquire', 'Inquire Receipt Information', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'remittance.create', 'Create Remittance', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'remittance.import', 'Import Remittance', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('SUBCOLLECTOR', 'TREASURY', 'remittance_subcollector.create', 'remittance_subcollector.create', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'remittance.viewlist', 'View Remittance Listing', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('AFO', 'TREASURY', 'riv_lgu.create', 'Create LGU RIV', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'riv.collector', 'Create RIV (Collector)', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'riv.salecreate', 'Create RIV (SALE)', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'riv.create', 'Create RIV', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_REPORTS', 'TREASURY', 'tcreport.craaf', 'CRAAF Report', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenue', 'Generate Statement of Revenue', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_REPORTS', 'TREASURY', 'tcreport.incomeaccount', 'Income Account Report', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_REPORTS', 'TREASURY', 'tcreport.reportofcollection', 'Report of Collection', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_REPORTS', 'TREASURY', 'tcreport.reportofcollection2', 'Report of Collection 2', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_REPORTS', 'TREASURY', 'tcreport.statementofrevenueexpanded', 'tcreport.statementofrevenueexpanded', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('TREASURY_ADMIN', 'TREASURY', 'treasurymgmt.view', 'View Treasury Management', 'tc2');
INSERT INTO sys_role_permission ( sysrole, domain, [action], title, module )  VALUES ('COLLECTOR', 'TREASURY', 'receipt.viewissued', 'View Issued Receipt Listing', 'tc2');





	
use lguname_etracs
go

ALTER TABLE afcontrol alter COLUMN afinventorycreditid VARCHAR(50) NULL
go


/*================================================================================================
**
** Addition of quarterlyInstallmentPaidOnTime fact 
**
================================================================================================*/

if not exists(select * from sys.columns 
            where Object_ID = Object_ID('rptledger') and Name = 'quarterlyinstallmentpaidontime')
begin
	ALTER TABLE rptledger ADD quarterlyinstallmentpaidontime INT NULL
end 
go

UPDATE rptledger SET 
	quarterlyinstallmentpaidontime  = CASE WHEN lastyearpaid < 2012 THEN 0 ELSE 1 END 
go
	

if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('landtaxsetting') AND type in ('U'))
begin
	CREATE TABLE landtaxsetting(
		objid VARCHAR(50) PRIMARY KEY,
		duedates TEXT NOT NULL
	)
end
go
	
if not exists(select * from sys.columns 
            where Object_ID = Object_ID('rptpaymentdetail') and Name = 'rptpaymentid')
begin
	ALTER TABLE rptpaymentdetail ADD rptpaymentid VARCHAR(50) NULL
	CREATE INDEX ix_rptpaymentdetail_rptpaymentid ON rptpaymentdetail( rptpaymentid )
end
go	

UPDATE rpd SET 
	rpd.rptpaymentid = rp.objid 
from rptpaymentdetail rpd, rptpayment rp
WHERE rpd.rptledgerid = rp.rptledgerid
  AND rpd.receiptid = rp.receiptid
go   


if not exists(select * from sys.columns 
           where Object_ID = Object_ID('rptcompromise_credit') and Name = 'paidby')
begin
	ALTER TABLE rptcompromise_credit ADD paidby VARCHAR(200) NULL
	ALTER TABLE rptcompromise_credit ADD paidbyaddress VARCHAR(200) NULL
	ALTER TABLE rptcompromise_credit ADD mode VARCHAR(25) NULL
	
end
go	


if exists (SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'FK_rptcompromise_credit') 
             AND parent_object_id = OBJECT_ID(N'rptcompromise_credit'))
BEGIN
	ALTER TABLE lguname_etracs..rptcompromise_credit DROP FK_rptcompromise_credit
end 
go





if exists(select * from sys.columns 
           where Object_ID = Object_ID('noticeofassessment') and Name = 'lgutype')
begin
	ALTER TABLE lguname_etracs..noticeofassessment DROP COLUMN lgutype
	ALTER TABLE lguname_etracs..noticeofassessment DROP COLUMN parentlguname
	ALTER TABLE lguname_etracs..noticeofassessment DROP COLUMN lguname
	ALTER TABLE lguname_etracs..noticeofassessment DROP COLUMN ry
end 
go


if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('noticeofassessmentitem') AND type in ('U'))
begin
CREATE TABLE noticeofassessmentitem (
	objid VARCHAR(50) NOT NULL,
	faasid VARCHAR(50) NOT NULL,
	noticeid VARCHAR(50) NOT NULL,
	PRIMARY KEY (objid)
)
end
go

if not exists (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('noticeofdelinquencysetting') AND type in ('U'))
begin
 CREATE TABLE noticeofdelinquencysetting (         
  objid varchar(50) NOT NULL,                     
  noticeofdelinquency int default '0',    
  noofdaysexpirednod int default '0',     
  secondtracer int default '0',           
  noofdaysexpiredst int default '0',      
  finaldemand int default '0',            
  noofdaysexpiredfd int default '0',      
  warrantoflevy int default '0',          
  noofdaysexpiredwol int default '0',     
  noticeofpublication int default '0',    
  noofdaysexpirednopas int default '0',   
  certofsaleofproperty int default '0',   
  noofdaysexpiredcsdrp int default '0',   
  noticeofredemption int default '0',     
  noofdaysexpirednor int default '0',  
  advancecomputation int default '0',     
  PRIMARY KEY  (objid)                            
)
end
go 
	
if not exists(select * from sys.columns 
           where Object_ID = Object_ID('noticeofdelinquency') and Name = 'docstate')	
begin           
	ALTER TABLE noticeofdelinquency
		ADD docstate VARCHAR(15) NULL,
		pin varchar(25) not null, 
		doctype VARCHAR(25) NULL,
		opener VARCHAR(35) NULL,
		parentid VARCHAR(50) NULL,
		basic DECIMAL(18, 2) NULL,
		basicdisc DECIMAL(18, 2) NULL,
		basicint DECIMAL(18, 2) NULL,
		sef DECIMAL(18, 2) NULL,
		sefdisc DECIMAL(18, 2) NULL,
		sefint DECIMAL(18, 2) NULL,
		currentqtr INT NULL,
		receivedby VARCHAR(50) NULL,
		receiveddate DATE NULL,
		delinquentyr INT NULL,
		delinquentqtr INT
end 	
go 
	
	
	

/*---------------------------------------------------------------------------------
**
** GENERAL REVISION 
**
--------------------------------------------------------------------------------- */

use lguname_etracs
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


CREATE INDEX ix_faaslist_fullpin ON faaslist(fullpin)
go

CREATE INDEX ix_faaslist_pin_rputype ON faaslist(pin, rputype)
go

CREATE INDEX ix_faaslist_fullpin_rputype ON faaslist(fullpin, rputype)
go




/*====================================================================================
**
**  SYSTEM UPDATES
**
====================================================================================*/

use lguname_system
go

/*====================================================================================
** insert messaging sys_var keys
====================================================================================*/

insert into sys_var( name, value ) values ('client_id', '')
go
insert into sys_var( name, value ) values('client_name', '')
go
	
insert into sys_var( name, value ) values ('remote_id', '')
go
insert into sys_var( name, value ) values('remote_name', '')
go
insert into sys_var( name, value ) values( 'gr_renumber_pin', '0')	
go 	


	
	
	
		