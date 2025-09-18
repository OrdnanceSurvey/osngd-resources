/* This DDL is based on data schema version 1.0 */
CREATE TABLE bld_fts_buildingaccesslocation (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_evidencedate date not null,
	geometry_updatedate date not null,
	geometry_capturemethod nvarchar(25) not null,
	theme nvarchar(40) not null,
	description nvarchar(25) not null,
	access_mode nvarchar(25) not null,
	access_purpose nvarchar(15) not null,
	access_obstruction nvarchar(37) not null,
	access_level nvarchar(20) not null,
	access_evidencedate date not null,
	access_updatedate date not null,
	accessedbuildingid uniqueidentifier,
	PRIMARY KEY (osid)
);
