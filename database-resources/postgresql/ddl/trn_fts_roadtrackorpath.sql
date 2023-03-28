/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_fts_roadtrackorpath (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	firstdigitalcapturedate date,
	changetype varchar(50) not null,
	geometry geometry(Polygon, 27700) not null,
	geometry_area numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(40) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	oslandcovertiera varchar(15) not null,
	oslandcovertierb varchar(120) not null,
	oslandcover_evidencedate date,
	oslandcover_updatedate date not null,
	oslandcover_source varchar(50),
	oslandusetiera varchar(50) not null,
	oslandusetierb varchar(88),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_source varchar(50),
	istidal boolean not null,
	associatedstructure varchar(25),
	isobscured boolean not null,
	physicallevel varchar(15) not null,
	capturespecification varchar(10) not null,
	PRIMARY KEY (osid)
);
