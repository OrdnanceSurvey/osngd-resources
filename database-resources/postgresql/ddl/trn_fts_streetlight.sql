/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_fts_streetlight (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	geometry_evidencedate date not null,
	geometry_updatedate date,
	geometry_capturemethod varchar(25) not null,
	theme varchar(40) not null,
	description varchar(13) not null,
	linkid varchar(36),
	linkid_featuretype varchar(10),
	linkid_confidence varchar(25) not null,
	linkid_evidencedate date not null,
	linkid_updatedate date not null,
	linkid_capturemethod varchar(25) not null,
	PRIMARY KEY (osid)
);
