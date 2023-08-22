/* This DDL is based on data schema version 1.0 */
CREATE TABLE bld_fts_building (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_updatedate date not null,
	theme nvarchar(40) not null,
	buildingpartcount integer not null,
	isinsite BIT,
	primarysiteid uniqueidentifier,
	containingsitecount integer not null,
	ismainbuilding BIT,
	mainbuilding_id uniqueidentifier,
	mainbuilding_updatedate date,
	buildinguse nvarchar(100),
	oslandusetiera nvarchar(50),
	addresscount_total integer not null,
	addresscount_residential integer not null,
	addresscount_commercial integer not null,
	addresscount_other integer not null,
	buildinguse_updatedate date,
	connectivity nvarchar(15) not null,
	connectivitycount integer not null,
	connectivity_updatedate date,
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_building_bldtostecrossref (
	siteid uniqueidentifier,
	buildingid uniqueidentifier,
	buildingversiondate date,
	PRIMARY KEY (siteid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtobldprtcrossref (
	buildingpartid uniqueidentifier,
	buildingid uniqueidentifier,
	buildingversiondate date,
	PRIMARY KEY (buildingpartid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtoaddrcrossref (
	uprn bigint,
	buildingid uniqueidentifier,
	buildingversiondate date,
	PRIMARY KEY (uprn,buildingid,buildingversiondate)
);
