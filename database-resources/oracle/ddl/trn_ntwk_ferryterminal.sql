/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_NTWK_FERRYTERMINAL (
	OSID VARCHAR2(32) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(14) not null,
	NAME1_TEXT VARCHAR2(254),
	NAME1_LANGUAGE VARCHAR2(3),
	NAME2_TEXT VARCHAR2(254),
	NAME2_LANGUAGE VARCHAR2(3),
	FERRYTERMINALCODE VARCHAR2(10),
	ROADNODEID VARCHAR2(3),
	PATHNODEID VARCHAR2(3),
	FERRYNODEID VARCHAR2(3) not null,
	SITEID VARCHAR2(3),
	PRIMARY KEY (osid)
);