/* This DDL is based on data schema version 1.0 */
CREATE TABLE gnm_fts_crowdsourcednamepoint (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(20) not null,
	name_text nvarchar(100) not null,
	name_language nvarchar(3) not null,
	name_evidencedate date not null,
	name_source nvarchar(100) not null,
	hassimilarosname BIT not null,
	matchtype nvarchar(60) not null,
	sourceclassification nvarchar(200) not null,
	matchedosid nvarchar(36),
	matchedosid_theme nvarchar(20),
	matchedosid_featuretype nvarchar(20),
	matcheduprn bigint,
	matchedusrn integer,
	PRIMARY KEY (osid)
);
