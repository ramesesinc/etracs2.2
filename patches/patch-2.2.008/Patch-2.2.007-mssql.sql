/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go

INSERT INTO role 
	(role, description, sysrole, system, domain)
VALUES
	('CTC_REPORTS', 'CTC REPORTS', 'CTC_REPORTS', 1, 'CTC')
go


CREATE TABLE ctcbrgyshare (
	objid varchar(50) NOT NULL PRIMARY KEY,
  year integer NOT NULL,
  month integer NOT NULL,
  barangay varchar(100) NOT NULL,
  amount numeric(16,2) NOT NULL,
  interest numeric(16,2) NOT NULL,
  shareamount numeric(16,2) NOT NULL,
  shareinterest numeric(16,2) NOT NULL
)
go


CREATE INDEX ix_ctcbrgyshare_year_month ON ctcbrgyshare(year, month)
go

CREATE INDEX ix_ctcbrgyshare_brgy_year_month ON ctcbrgyshare(barangay, year, month)
go


ALTER TABLE ctcbrgyshare ADD COLUMN objid VARCHAR(50) NULL
go

CREATE INDEX ix_ctcbrgyshare_objid ON ctcbrgyshare(objid)
go


/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

INSERT INTO sys_role (name, domain) VALUES('CTC_REPORTS','CTC')
go


INSERT INTO sys_var (name, value, description, category )
VALUES ('ctc_brgyshare', '50', 'CTC Barangay Share', 'CTC')
go