/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_fts_waterbodycatchment (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_source nvarchar(85),
	theme nvarchar(40) not null,
	description nvarchar(20) not null,
	waterbodyid nvarchar(15) not null,
	waterbodycategory nvarchar(20) not null,
	waterbodyname_text nvarchar(254) not null,
	waterbodyname_source nvarchar(85),
	riverbasindistrict_id integer not null,
	riverbasindistrict_name nvarchar(15) not null,
	incountry nvarchar(16) not null,
	PRIMARY KEY (osid)
);
