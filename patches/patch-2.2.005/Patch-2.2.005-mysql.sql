/*=================================================================
** ETRACS DB
=================================================================*/
use lguname_etracs;

/* transmittal updates */
ALTER TABLE rpttransmittal_item ADD COLUMN transmittalid VARCHAR(50) NOT NULL;
ALTER TABLE rpttransmittal_import_item ADD COLUMN transmittalid VARCHAR(50) NOT NULL;
	

/*=================================================================
** SYSTEMDB
=================================================================*/
use lguname_system;
