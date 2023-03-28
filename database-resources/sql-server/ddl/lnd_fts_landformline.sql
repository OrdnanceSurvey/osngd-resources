/* This DDL is based on data schema version . */
CREATE TABLE lnd_fts_landformline (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(100) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	isobscured BIT not null,
	capturespecification nvarchar(10) not null,
	PRIMARY KEY (osid)
);
