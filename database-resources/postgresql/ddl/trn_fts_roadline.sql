/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_fts_roadline (
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
	description varchar(40) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	istidal boolean not null,
	isobscured boolean not null,
	physicallevel varchar(15) not null,
	capturespecification varchar(10) not null,
	PRIMARY KEY (osid)
);
