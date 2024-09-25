/* This DDL is based on data schema version 2.0 */
CREATE TABLE BLD_FTS_BUILDINGPART (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	FIRSTDIGITALCAPTUREDATE DATE,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_AREA_M2 NUMERIC(15,3) not null,
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_UPDATEDATE DATE not null,
	GEOMETRY_CAPTUREMETHOD VARCHAR2(25) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_CAPTUREMETHOD VARCHAR2(25) not null,
	OSLANDCOVERTIERA VARCHAR2(15) not null,
	OSLANDCOVERTIERB VARCHAR2(20) not null,
	OSLANDCOVER_EVIDENCEDATE DATE,
	OSLANDCOVER_UPDATEDATE DATE not null,
	OSLANDCOVER_CAPTUREMETHOD VARCHAR2(25) not null,
	OSLANDUSETIERA VARCHAR2(50) not null,
	OSLANDUSETIERB VARCHAR2(88) not null,
	OSLANDUSE_EVIDENCEDATE DATE,
	OSLANDUSE_UPDATEDATE DATE not null,
	OSLANDUSE_CAPTUREMETHOD VARCHAR2(25) not null,
	HEIGHT_ABSOLUTEROOFBASE_M NUMERIC(5,1),
	HEIGHT_RELATIVEROOFBASE_M NUMERIC(4,1),
	HEIGHT_ABSOLUTEMAX_M NUMERIC(5,1),
	HEIGHT_RELATIVEMAX_M NUMERIC(4,1),
	HEIGHT_ABSOLUTEMIN_M NUMERIC(5,1),
	HEIGHT_CONFIDENCELEVEL VARCHAR2(15),
	HEIGHT_EVIDENCEDATE DATE,
	HEIGHT_UPDATEDATE DATE,
	ASSOCIATEDSTRUCTURE VARCHAR2(25),
	ISOBSCURED NUMBER(1) not null,
	PHYSICALLEVEL VARCHAR2(15) not null,
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	CONTAININGSITECOUNT NUMBER(4) not null,
	SMALLESTSITE_SITEID VARCHAR2(36),
	SMALLESTSITE_LANDUSETIERA VARCHAR2(50),
	SMALLESTSITE_LANDUSETIERB VARCHAR2(88) not null,
	LARGESTSITE_LANDUSETIERA VARCHAR2(50),
	LARGESTSITE_LANDUSETIERB VARCHAR2(88) not null,
	NLUD_CODE VARCHAR2(4),
	NLUD_ORDERDESCRIPTION VARCHAR2(30),
	NLUD_GROUPDESCRIPTION VARCHAR2(40),
	ADDRESS_CLASSIFICATIONCODE VARCHAR2(2),
	ADDRESS_PRIMARYDESCRIPTION VARCHAR2(120),
	ADDRESS_SECONDARYDESCRIPTION VARCHAR2(120),
	LOWERTIERLOCALAUTHORITY_GSSCODE VARCHAR2(10),
	LOWERTIERLOCALAUTHORITY_COUNT NUMBER(2) not null,
	STATUS VARCHAR2(10),
	STATUS_UPDATEDATE DATE,
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_buildingpart_siteref (
	SITEID VARCHAR2(36) not null,
	BUILDINGPARTID VARCHAR2(36) not null,
	BUILDINGPARTVERSIONDATE DATE not null,
	PRIMARY KEY (siteid,buildingpartid,buildingpartversiondate)
);
