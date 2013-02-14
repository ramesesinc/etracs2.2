/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go

CREATE INDEX ix_bpapplicationlisting_iyear ON bpapplicationlisting(iyear)
go

CREATE INDEX ix_bpappinfolisting_applicationid ON bpappinfolisting( applicationid)
go

CREATE INDEX ix_bpapplication_docstate ON bpapplication(docstate)
go

ALTER TABLE truecopy ALTER COLUMN txnno VARCHAR(25) NOT NULL
GO

/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

INSERT INTO sys_role_permission ( sysrole, domain, `action`, title, module)
VALUES( 'BP_REPORTS', 'BP', 'generateQtrlyPaidBusinessListing', 'Generate Quarterly Paid Business Listing', 'bp2-reports')
go


