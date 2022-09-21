CREATE TABLE lnd_fts_land (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_area NUMERIC(15,6) not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(100) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	oslandcovertiera VARCHAR2(30) not null,
	oslandcovertierb VARCHAR2(120) not null,
	landform VARCHAR2(20),
	oslandcover_evidencedate DATE,
	oslandcover_updatedate DATE not null,
	oslandcover_source VARCHAR2(50),
	oslandusetiera VARCHAR2(50) not null,
	oslandusetierb VARCHAR2(88),
	oslanduse_evidencedate DATE,
	oslanduse_updatedate DATE not null,
	oslanduse_source VARCHAR2(50),
	istidal NUMBER(1) not null,
	associatedstructure VARCHAR2(25),
	operationalstatus VARCHAR2(10),
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE lnd_fts_landform (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_area NUMERIC(15,6) not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(100) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	name1_text VARCHAR2(254),
	name1_language VARCHAR2(3),
	name1_evidencedate DATE,
	name1_updatedate DATE,
	name1_source VARCHAR2(50),
	name2_text VARCHAR2(254),
	name2_language VARCHAR2(3),
	name2_evidencedate DATE,
	name2_updatedate DATE,
	name2_source VARCHAR2(50),
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE lnd_fts_landformline (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_length NUMERIC(15,6) not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(100) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	isobscured NUMBER(1) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE lnd_fts_landformpoint (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(100) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	name1_text VARCHAR2(254),
	name1_language VARCHAR2(3),
	name1_evidencedate DATE,
	name1_updatedate DATE,
	name1_source VARCHAR2(50),
	name2_text VARCHAR2(254),
	name2_language VARCHAR2(3),
	name2_evidencedate DATE,
	name2_updatedate DATE,
	name2_source VARCHAR2(50),
	isobscured NUMBER(1) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE lnd_fts_landpoint (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(100) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	name1_text VARCHAR2(254),
	name1_language VARCHAR2(3),
	name1_evidencedate DATE,
	name1_updatedate DATE,
	name1_source VARCHAR2(50),
	name2_text VARCHAR2(254),
	name2_language VARCHAR2(3),
	name2_evidencedate DATE,
	name2_updatedate DATE,
	name2_source VARCHAR2(50),
	operationalstatus VARCHAR2(10) not null,
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);