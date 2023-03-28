/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_RAMI_MAINTENANCELINE (
	OSID VARCHAR2(32) not null,
	AUTHORITYID VARCHAR2(17) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	EFFECTIVESTARTDATE DATE not null,
	EFFECTIVEENDDATE DATE,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH NUMERIC(15,6) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(20) not null,
	MAINTENANCERESPONSIBILITY VARCHAR2(60) not null,
	MAINTENANCEAUTHORITY_IDENTIFIER VARCHAR2(4),
	MAINTENANCEAUTHORITY_AUTHORITYNAME VARCHAR2(100),
	HIGHWAYAUTHORITY_IDENTIFIER VARCHAR2(4) not null,
	HIGHWAYAUTHORITY_AUTHORITYNAME VARCHAR2(100) not null,
	LOCATIONDESCRIPTION VARCHAR2(250),
	PARTIALREFERENCE NUMBER(1) not null,
	USRN NUMBER(8) not null,
	PRIMARY KEY (osid)
);
