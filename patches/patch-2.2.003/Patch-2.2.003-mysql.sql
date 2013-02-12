/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

CREATE INDEX ix_bpapplicationlisting_iyear ON bpapplicationlisting(iyear);

CREATE INDEX ix_bpappinfolisting_applicationid ON bpappinfolisting( applicationid);

CREATE INDEX ix_bpapplication_docstate ON bpapplication(docstate);

/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system;

INSERT INTO sys_role_permission ( sysrole, domain, `action`, title, module)
VALUES( 'BP_REPORTS', 'BP', 'generateQtrlyPaidBusinessListing', 'Generate Quarterly Paid Business Listing', 'bp2-reports');


