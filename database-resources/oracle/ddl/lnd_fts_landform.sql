/* This DDL is based on data schema version . */
CREATE TABLE LND_FTS_LANDFORM (
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
	DESCRIPTION VARCHAR2(100) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_SOURCE VARCHAR2(50),
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
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
