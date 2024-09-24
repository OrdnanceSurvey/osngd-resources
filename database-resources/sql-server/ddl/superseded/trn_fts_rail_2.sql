/* This DDL is based on data schema version 2.0 */
CREATE TABLE trn_fts_rail (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3),
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_capturemethod nvarchar(25),
	theme nvarchar(40) not null,
	description nvarchar(40) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_capturemethod nvarchar(25),
	oslandcovertiera nvarchar(15) not null,
	oslandcovertierb nvarchar(120) not null,
	oslandcover_evidencedate date,
	oslandcover_updatedate date not null,
	oslandcover_capturemethod nvarchar(25),
	oslandusetiera nvarchar(50) not null,
	oslandusetierb nvarchar(88),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_capturemethod nvarchar(25),
	associatedstructure nvarchar(25),
	operationalstatus nvarchar(10) not null,
	isobscured BIT not null,
	physicallevel nvarchar(15) not null,
	capturespecification nvarchar(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_fts_rail_habcovref (
	osid uniqueidentifier not null,
	scheme nvarchar(20),
	habitatcode nvarchar(5),
	habitatdescription nvarchar(80),
	percentage integer,
	percentage_evidencedate date,
	percentage_updatedate date,
	featuretypeversiondate date,
	PRIMARY KEY (osid,featuretypeversiondate,habitatdescription)
);
