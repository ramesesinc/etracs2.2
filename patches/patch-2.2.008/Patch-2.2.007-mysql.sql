/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

/*================= BRGYSHARE =========================*/

INSERT INTO role 
	(role, description, sysrole, system, domain)
VALUES
	('CTC_REPORTS', 'CTC REPORTS', 'CTC_REPORTS', 1, 'CTC');


CREATE TABLE IF NOT EXISTS `ctcbrgyshare` (
  objid varchar(50) NOT NULL PRIMARY KEY,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `interest` decimal(16,2) NOT NULL,
  `shareamount` decimal(16,2) NOT NULL,
  `shareinterest` decimal(16,2) NOT NULL
) ENGINE=InnoDB;

CREATE INDEX ix_ctcbrgyshare_year_month ON ctcbrgyshare(`year`, `month`);

CREATE INDEX ix_ctcbrgyshare_brgy_year_month ON ctcbrgyshare(barangay, `year`, `month`);

ALTER TABLE ctcbrgyshare ADD COLUMN objid VARCHAR(50) NULL;

CREATE INDEX ix_ctcbrgyshare_objid ON ctcbrgyshare(objid);



/*================= AFCONTROL MULTI-REPORT SUPPORT  =========================*/
ALTER TABLE afcontrol ADD COLUMN reportname VARCHAR(50);




/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system;

INSERT INTO sys_role (`name`, domain) VALUES('CTC_REPORTS','CTC');


INSERT INTO sys_var (`name`, `value`, description, category )
VALUES ('ctc_brgyshare', '50', 'CTC Barangay Share', 'CTC');