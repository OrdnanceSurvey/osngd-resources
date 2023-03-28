/* This DDL is based on data schema version 1.0 */
CREATE TABLE BLD_FTS_BUILDINGLINE (
	OSID VARCHAR2(32) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	FIRSTDIGITALCAPTUREDATE DATE,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH NUMERIC(15,6) not null,
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_UPDATEDATE DATE not null,
	GEOMETRY_SOURCE VARCHAR2(50) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_SOURCE VARCHAR2(50),
	ISOBSCURED NUMBER(1) not null,
	PHYSICALLEVEL VARCHAR2(15) not null,
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
