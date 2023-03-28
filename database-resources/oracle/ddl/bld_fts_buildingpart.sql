/* This DDL is based on data schema version 1.0 */
CREATE TABLE BLD_FTS_BUILDINGPART (
	OSID VARCHAR2(32) not null,
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
	OSLANDCOVERTIERA VARCHAR2(15) not null,
	OSLANDCOVERTIERB VARCHAR2(20) not null,
	OSLANDCOVER_EVIDENCEDATE DATE,
	OSLANDCOVER_UPDATEDATE DATE not null,
	OSLANDCOVER_SOURCE VARCHAR2(50),
	OSLANDUSETIERA VARCHAR2(50) not null,
	OSLANDUSETIERB VARCHAR2(88),
	OSLANDUSE_EVIDENCEDATE DATE,
	OSLANDUSE_UPDATEDATE DATE not null,
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
	ASSOCIATEDSTRUCTURE VARCHAR2(25),
	ISOBSCURED NUMBER(1) not null,
	PHYSICALLEVEL VARCHAR2(15) not null,
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
