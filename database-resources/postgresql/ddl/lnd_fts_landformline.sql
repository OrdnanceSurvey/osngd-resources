/* This DDL is based on data schema version 1.0 */
CREATE TABLE lnd_fts_landformline (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	firstdigitalcapturedate date,
	changetype varchar(50) not null,
	geometry geometry(LineString, 27700) not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(100) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	isobscured boolean not null,
	capturespecification varchar(10) not null,
	PRIMARY KEY (osid)
);
