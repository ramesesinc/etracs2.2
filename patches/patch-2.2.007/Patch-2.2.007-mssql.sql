/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs
go
/* transmittal updates */
ALTER TABLE rpttransmittal_item ADD transmittalid VARCHAR(50) NOT NULL
go

ALTER TABLE rpttransmittal_import_item ADD transmittalid VARCHAR(50) NOT NULL
go 




/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system
go

INSERT INTO sys_var (name, value, category) VALUES('provincial_assessor_name', '', 'RPT')
go
INSERT INTO sys_var (name, value, category) VALUES('provincial_assessor_title', '', 'RPT')
go