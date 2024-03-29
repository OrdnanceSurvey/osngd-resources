/* This DDL is based on data schema version 1.0 */
CREATE TABLE WTR_NTWK_WATERLINKSET (
	OSID VARCHAR2(36) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH NUMERIC(15,6) not null,
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_UPDATEDATE DATE not null,
	GEOMETRY_SOURCE VARCHAR2(50),
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(29) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_SOURCE VARCHAR2(50),
	NAME1_TEXT VARCHAR2(254) not null,
	NAME1_LANGUAGE VARCHAR2(3),
	NAME1_EVIDENCEDATE DATE,
	NAME1_UPDATEDATE DATE not null,
	NAME1_SOURCE VARCHAR2(50),
	NAME2_TEXT VARCHAR2(254),
	NAME2_LANGUAGE VARCHAR2(3),
	NAME2_EVIDENCEDATE DATE,
	NAME2_UPDATEDATE DATE,
	NAME2_SOURCE VARCHAR2(50),
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_ntwk_waterlinkset_wtrlinkref (
	WATERLINKID VARCHAR2(36),
	WATERLINKSETID VARCHAR2(36),
	WATERLINKSETVERSIONDATE DATE,
	PRIMARY KEY (waterlinkid,waterlinksetid,waterlinksetversiondate)
);
