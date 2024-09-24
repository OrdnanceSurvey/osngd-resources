/* This DDL is based on data schema version 2.0 */
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
	description nvarchar(45) not null,
	description_updatedate date not null,
	buildingpartcount integer not null,
	isinsite BIT not null,
	primarysite_id nvarchar(36),
	containingsitecount integer not null,
	ismainbuilding BIT,
	mainbuilding_id uniqueidentifier,
	mainbuilding_updatedate date not null,
	buildinguse nvarchar(100) not null,
	oslandusetiera nvarchar(50) not null,
	addresscount_total integer not null,
	addresscount_residential integer not null,
	addresscount_commercial integer not null,
	addresscount_other integer not null,
	buildinguse_updatedate date not null,
	connectivity nvarchar(15) not null,
	connectivitycount integer not null,
	connectivity_updatedate date not null,
	constructionmaterial nvarchar(40) not null,
	constructionmaterial_evidencedate date,
	constructionmaterial_updatedate date,
	constructionmaterial_source nvarchar(85) not null,
	constructionmaterial_capturemethod nvarchar(25) not null,
	constructionmaterial_thirdpartyprovenance nvarchar(65),
	buildingage_period nvarchar(10) not null,
	buildingage_year integer,
	buildingage_evidencedate date,
	buildingage_updatedate date,
	buildingage_source nvarchar(85) not null,
	buildingage_capturemethod nvarchar(25) not null,
	buildingage_thirdpartyprovenance nvarchar(65),
	basementpresence nvarchar(15) not null,
	basementpresence_selfcontained nvarchar(15) not null,
	basementpresence_evidencedate date,
	basementpresence_updatedate date,
	basementpresence_source nvarchar(85) not null,
	basementpresence_capturemethod nvarchar(25) not null,
	basementpresence_thirdpartyprovenance nvarchar(65),
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
