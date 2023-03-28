/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_fts_riverbasindistrictcatchment (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_source nvarchar(85),
	theme nvarchar(40) not null,
	description nvarchar(30) not null,
	riverbasindistrictid integer not null,
	riverbasindistrictname nvarchar(15) not null,
	PRIMARY KEY (osid)
);
