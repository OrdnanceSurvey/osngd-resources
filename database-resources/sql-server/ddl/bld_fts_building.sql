/* This DDL is based on data schema version 3.0 */
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
	primarysiteid uniqueidentifier,
	containingsitecount integer not null,
	mainbuildingid uniqueidentifier,
	mainbuildingid_ismainbuilding nvarchar(5),
	mainbuildingid_updatedate date not null,
	buildinguse nvarchar(100) not null,
	buildinguse_oslandusetiera nvarchar(50),
	buildinguse_addresscount_total integer not null,
	buildinguse_addresscount_residential integer not null,
	buildinguse_addresscount_commercial integer not null,
	buildinguse_addresscount_other integer not null,
	buildinguse_updatedate date not null,
	connectivity nvarchar(15) not null,
	connectivity_count integer not null,
	connectivity_updatedate date not null,
	constructionmaterial nvarchar(40),
	constructionmaterial_evidencedate date,
	constructionmaterial_updatedate date,
	constructionmaterial_source nvarchar(85),
	constructionmaterial_capturemethod nvarchar(25),
	constructionmaterial_thirdpartyprovenance nvarchar(65),
	buildingage_period nvarchar(10),
	buildingage_year integer,
	buildingage_evidencedate date,
	buildingage_updatedate date,
	buildingage_source nvarchar(85),
	buildingage_capturemethod nvarchar(25),
	buildingage_thirdpartyprovenance nvarchar(65),
	basementpresence nvarchar(15),
	basementpresence_selfcontained nvarchar(15),
	basementpresence_evidencedate date,
	basementpresence_updatedate date,
	basementpresence_source nvarchar(85),
	basementpresence_capturemethod nvarchar(25),
	basementpresence_thirdpartyprovenance nvarchar(65),
	numberoffloors integer,
	numberoffloors_evidencedate date,
	numberoffloors_updatedate date,
	numberoffloors_source nvarchar(40),
	numberoffloors_capturemethod nvarchar(25),
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_building_bldtostecrossref (
	siteid uniqueidentifier not null,
	buildingid uniqueidentifier not null,
	buildingversiondate date not null,
	PRIMARY KEY (siteid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtobldprtcrossref (
	buildingpartid uniqueidentifier not null,
	buildingid uniqueidentifier not null,
	buildingversiondate date not null,
	PRIMARY KEY (buildingpartid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtoaddrcrossref (
	uprn bigint not null,
	buildingid uniqueidentifier not null,
	buildingversiondate date not null,
	PRIMARY KEY (uprn,buildingid,buildingversiondate)
);
