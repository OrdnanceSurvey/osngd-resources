/* This DDL is based on data schema version 2.0 */
CREATE TABLE WTR_FTS_WATER (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	FIRSTDIGITALCAPTUREDATE DATE,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_AREA_M2 NUMERIC(15,3),
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_UPDATEDATE DATE not null,
	GEOMETRY_CAPTUREMETHOD VARCHAR2(25),
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_CAPTUREMETHOD VARCHAR2(25),
	OSLANDCOVERTIERA VARCHAR2(25) not null,
	OSLANDCOVERTIERB VARCHAR2(117) not null,
	OSLANDCOVER_EVIDENCEDATE DATE,
	OSLANDCOVER_UPDATEDATE DATE not null,
	OSLANDCOVER_CAPTUREMETHOD VARCHAR2(25),
	OSLANDUSETIERA VARCHAR2(50) not null,
	OSLANDUSETIERB VARCHAR2(88),
	OSLANDUSE_EVIDENCEDATE DATE,
	OSLANDUSE_UPDATEDATE DATE not null,
	OSLANDUSE_CAPTUREMETHOD VARCHAR2(25),
	WATERTYPE VARCHAR2(10) not null,
	ASSOCIATEDSTRUCTURE VARCHAR2(25),
	OPERATIONALSTATUS VARCHAR2(10) not null,
	ISOBSCURED NUMBER(1) not null,
	PHYSICALLEVEL VARCHAR2(15) not null,
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_fts_water_habcovref (
	OSID VARCHAR2(36) not null,
	SCHEME VARCHAR2(20),
	HABITATCODE VARCHAR2(5),
	HABITATDESCRIPTION VARCHAR2(80),
	PERCENTAGE NUMBER(3),
	PERCENTAGE_EVIDENCEDATE DATE,
	PERCENTAGE_UPDATEDATE DATE,
	FEATURETYPEVERSIONDATE DATE,
	PRIMARY KEY (osid,featuretypeversiondate,habitatdescription)
);