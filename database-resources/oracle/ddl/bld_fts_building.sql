/* This DDL is based on data schema version 3.0 */
CREATE TABLE BLD_FTS_BUILDING (
	OSID VARCHAR2(36) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_AREA_M2 NUMERIC(15,3) not null,
	GEOMETRY_UPDATEDATE DATE not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(45) not null,
	DESCRIPTION_UPDATEDATE DATE not null,
	BUILDINGPARTCOUNT NUMBER(4) not null,
	ISINSITE NUMBER(1) not null,
	PRIMARYSITEID VARCHAR2(36),
	CONTAININGSITECOUNT NUMBER(4) not null,
	MAINBUILDINGID VARCHAR2(36),
	MAINBUILDINGID_ISMAINBUILDING VARCHAR2(5),
	MAINBUILDINGID_UPDATEDATE DATE not null,
	BUILDINGUSE VARCHAR2(100) not null,
	BUILDINGUSE_OSLANDUSETIERA VARCHAR2(50),
	BUILDINGUSE_ADDRESSCOUNT_TOTAL NUMBER(4) not null,
	BUILDINGUSE_ADDRESSCOUNT_RESIDENTIAL NUMBER(4) not null,
	BUILDINGUSE_ADDRESSCOUNT_COMMERCIAL NUMBER(4) not null,
	BUILDINGUSE_ADDRESSCOUNT_OTHER NUMBER(4) not null,
	BUILDINGUSE_UPDATEDATE DATE not null,
	CONNECTIVITY VARCHAR2(15) not null,
	CONNECTIVITY_COUNT NUMBER(4) not null,
	CONNECTIVITY_UPDATEDATE DATE not null,
	CONSTRUCTIONMATERIAL VARCHAR2(40),
	CONSTRUCTIONMATERIAL_EVIDENCEDATE DATE,
	CONSTRUCTIONMATERIAL_UPDATEDATE DATE,
	CONSTRUCTIONMATERIAL_SOURCE VARCHAR2(85),
	CONSTRUCTIONMATERIAL_CAPTUREMETHOD VARCHAR2(25),
	CONSTRUCTIONMATERIAL_THIRDPARTYPROVENANCE VARCHAR2(65),
	BUILDINGAGE_PERIOD VARCHAR2(10),
	BUILDINGAGE_YEAR NUMBER(4),
	BUILDINGAGE_EVIDENCEDATE DATE,
	BUILDINGAGE_UPDATEDATE DATE,
	BUILDINGAGE_SOURCE VARCHAR2(85),
	BUILDINGAGE_CAPTUREMETHOD VARCHAR2(25),
	BUILDINGAGE_THIRDPARTYPROVENANCE VARCHAR2(65),
	BASEMENTPRESENCE VARCHAR2(15),
	BASEMENTPRESENCE_SELFCONTAINED VARCHAR2(15),
	BASEMENTPRESENCE_EVIDENCEDATE DATE,
	BASEMENTPRESENCE_UPDATEDATE DATE,
	BASEMENTPRESENCE_SOURCE VARCHAR2(85),
	BASEMENTPRESENCE_CAPTUREMETHOD VARCHAR2(25),
	BASEMENTPRESENCE_THIRDPARTYPROVENANCE VARCHAR2(65),
	NUMBEROFFLOORS NUMBER(2),
	NUMBEROFFLOORS_EVIDENCEDATE DATE,
	NUMBEROFFLOORS_UPDATEDATE DATE,
	NUMBEROFFLOORS_SOURCE VARCHAR2(40),
	NUMBEROFFLOORS_CAPTUREMETHOD VARCHAR2(25),
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_building_bldtostecrossref (
	SITEID VARCHAR2(36) not null,
	BUILDINGID VARCHAR2(36) not null,
	BUILDINGVERSIONDATE DATE not null,
	PRIMARY KEY (siteid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtobldprtcrossref (
	BUILDINGPARTID VARCHAR2(36) not null,
	BUILDINGID VARCHAR2(36) not null,
	BUILDINGVERSIONDATE DATE not null,
	PRIMARY KEY (buildingpartid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtoaddrcrossref (
	UPRN NUMBER(12) not null,
	BUILDINGID VARCHAR2(36) not null,
	BUILDINGVERSIONDATE DATE not null,
	PRIMARY KEY (uprn,buildingid,buildingversiondate)
);
