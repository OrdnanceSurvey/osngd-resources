/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_bdy_historiccounty (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area numeric(18,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	name1_text nvarchar(254) not null,
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	boundarytype nvarchar(50) not null,
	landareahectares numeric(15,6) not null,
	tidalareahectares numeric(15,6) not null,
	totalareahectares numeric(15,6) not null,
	PRIMARY KEY (osid)
);
