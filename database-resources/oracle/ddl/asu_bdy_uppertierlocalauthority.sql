/* This DDL is based on data schema version 1.0 */
CREATE TABLE ASU_BDY_UPPERTIERLOCALAUTHORITY (
	OSID VARCHAR2(32) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_AREA NUMERIC(18,6) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	NAME1_TEXT VARCHAR2(254) not null,
	NAME1_LANGUAGE VARCHAR2(3),
	NAME2_TEXT VARCHAR2(254),
	NAME2_LANGUAGE VARCHAR2(3),
	GSSCODE VARCHAR2(10) not null,
	BOUNDARYTYPE VARCHAR2(50) not null,
	LANDAREAHECTARES NUMERIC(15,6) not null,
	TIDALAREAHECTARES NUMERIC(15,6) not null,
	TOTALAREAHECTARES NUMERIC(15,6) not null,
	ISBOROUGH NUMBER(1) not null,
	PRIMARY KEY (osid)
);
