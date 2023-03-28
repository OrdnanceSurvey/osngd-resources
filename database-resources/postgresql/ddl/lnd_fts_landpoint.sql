/* This DDL is based on data schema version . */
CREATE TABLE lnd_fts_landpoint (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	firstdigitalcapturedate date,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(100) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	name1_text varchar(254),
	name1_language varchar(3),
	name1_evidencedate date,
	name1_updatedate date,
	name1_source varchar(50),
	name2_text varchar(254),
	name2_language varchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source varchar(50),
	operationalstatus varchar(10) not null,
	isobscured boolean not null,
	physicallevel varchar(15) not null,
	capturespecification varchar(10) not null,
	PRIMARY KEY (osid)
);
