/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go

CREATE INDEX ix_bpapplicationlisting_iyear ON bpapplicationlisting(iyear)
go


/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

INSERT INTO sys_role_permission ( sysrole, domain, `action`, title, module)
VALUES( 'BP_REPORTS', 'BP', 'generateQtrlyPaidBusinessListing', 'Generate Quarterly Paid Business Listing', 'bp2-reports')
go


