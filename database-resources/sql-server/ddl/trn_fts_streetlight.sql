/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_fts_streetlight (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_evidencedate date not null,
	geometry_updatedate date,
	geometry_capturemethod nvarchar(25) not null,
	theme nvarchar(40) not null,
	description nvarchar(13) not null,
	linkid nvarchar(36),
	linkid_featuretype nvarchar(10),
	linkid_confidence nvarchar(25) not null,
	linkid_evidencedate date not null,
	linkid_updatedate date not null,
	linkid_capturemethod nvarchar(25) not null,
	PRIMARY KEY (osid)
);
