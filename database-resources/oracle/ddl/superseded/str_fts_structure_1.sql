/* This DDL is based on data schema version 1.0 */
CREATE TABLE STR_FTS_STRUCTURE (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	FIRSTDIGITALCAPTUREDATE DATE,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_AREA NUMERIC(15,6) not null,
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_UPDATEDATE DATE not null,
	GEOMETRY_SOURCE VARCHAR2(50),
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_SOURCE VARCHAR2(50),
	OSLANDCOVERTIERA VARCHAR2(15),
	OSLANDCOVERTIERB VARCHAR2(92),
	OSLANDCOVER_EVIDENCEDATE DATE,
	OSLANDCOVER_UPDATEDATE DATE,
	OSLANDCOVER_SOURCE VARCHAR2(50),
	OSLANDUSETIERA VARCHAR2(50),
	OSLANDUSETIERB VARCHAR2(88),
	OSLANDUSE_EVIDENCEDATE DATE,
	OSLANDUSE_UPDATEDATE DATE,
	OSLANDUSE_SOURCE VARCHAR2(50),
	ABSOLUTEHEIGHTROOFBASE NUMERIC(6,2),
	RELATIVEHEIGHTROOFBASE NUMERIC(6,2),
	ABSOLUTEHEIGHTMAXIMUM NUMERIC(6,2),
	RELATIVEHEIGHTMAXIMUM NUMERIC(6,2),
	ABSOLUTEHEIGHTMINIMUM NUMERIC(6,2),
	HEIGHTCONFIDENCELEVEL VARCHAR2(15),
	HEIGHT_EVIDENCEDATE DATE,
	HEIGHT_UPDATEDATE DATE,
	HEIGHT_SOURCE VARCHAR2(50),
	NAME1_TEXT VARCHAR2(254),
	NAME1_LANGUAGE VARCHAR2(3),
	NAME1_EVIDENCEDATE DATE,
	NAME1_UPDATEDATE DATE,
	NAME1_SOURCE VARCHAR2(50),
	NAME2_TEXT VARCHAR2(254),
	NAME2_LANGUAGE VARCHAR2(3),
	NAME2_EVIDENCEDATE DATE,
	NAME2_UPDATEDATE DATE,
	NAME2_SOURCE VARCHAR2(50),
	ISTIDAL NUMBER(1) not null,
	ISHISTORIC NUMBER(1) not null,
	ASSOCIATEDSTRUCTURE VARCHAR2(25),
	OPERATIONALSTATUS VARCHAR2(10),
	ISOBSCURED NUMBER(1) not null,
	PHYSICALLEVEL VARCHAR2(15) not null,
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
