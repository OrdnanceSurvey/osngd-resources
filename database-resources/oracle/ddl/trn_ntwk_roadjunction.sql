/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_NTWK_ROADJUNCTION (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(26) not null,
	NAME1_TEXT VARCHAR2(254) not null,
	NAME1_LANGUAGE VARCHAR2(3),
	NAME2_TEXT VARCHAR2(254),
	NAME2_LANGUAGE VARCHAR2(3),
	ROADCLASSIFICATIONNUMBER VARCHAR2(10),
	JUNCTIONNUMBER VARCHAR2(10),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadjunction_rdnoderef (
	ROADNODEID VARCHAR2(36),
	ROADJUNCTIONID VARCHAR2(36),
	ROADJUNCTIONVERSIONDATE DATE,
	PRIMARY KEY (roadnodeid,roadjunctionid,roadjunctionversiondate)
);
