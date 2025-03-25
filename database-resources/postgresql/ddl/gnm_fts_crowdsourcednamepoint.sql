/* This DDL is based on data schema version 1.0 */
CREATE TABLE gnm_fts_crowdsourcednamepoint (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	theme varchar(40) not null,
	description varchar(20) not null,
	name_text varchar(100) not null,
	name_language varchar(3) not null,
	name_evidencedate date not null,
	name_source varchar(100) not null,
	hassimilarosname boolean not null,
	matchtype varchar(60) not null,
	sourceclassification varchar(200) not null,
	matchedosid varchar(36),
	matchedosid_theme varchar(20),
	matchedosid_featuretype varchar(20),
	matcheduprn bigint,
	matchedusrn integer,
	PRIMARY KEY (osid)
);
