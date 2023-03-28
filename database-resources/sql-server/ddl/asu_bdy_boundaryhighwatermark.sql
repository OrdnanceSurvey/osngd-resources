/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_bdy_boundaryhighwatermark (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(18,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	boundarytype nvarchar(50) not null,
	PRIMARY KEY (osid)
);
