/* This DDL is based on data schema version 3.0 */
CREATE TABLE wtr_fts_water (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_capturemethod nvarchar(25) not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_capturemethod nvarchar(25) not null,
	oslandcovertiera nvarchar(25) not null,
	oslandcovertierb nvarchar(117) not null,
	oslandcover_evidencedate date,
	oslandcover_updatedate date not null,
	oslandcover_capturemethod nvarchar(25) not null,
	oslandusetiera nvarchar(50) not null,
	oslandusetierb nvarchar(88),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_capturemethod nvarchar(25) not null,
	watertype nvarchar(10) not null,
	associatedstructure nvarchar(25),
	isobscured BIT not null,
	physicallevel nvarchar(15) not null,
	capturespecification nvarchar(10) not null,
	containingsitecount integer not null,
	smallestsite_siteid uniqueidentifier,
	smallestsite_landusetiera nvarchar(50),
	smallestsite_landusetierb nvarchar(88),
	largestsite_landusetiera nvarchar(50),
	largestsite_landusetierb nvarchar(88),
	nlud_code nvarchar(4),
	nlud_orderdescription nvarchar(30),
	nlud_groupdescription nvarchar(40),
	address_classificationcode nvarchar(2),
	address_primarydescription nvarchar(120),
	address_secondarydescription nvarchar(120),
	lowertierlocalauthority_gsscode nvarchar(10),
	lowertierlocalauthority_count integer not null,
	status nvarchar(10),
	status_updatedate date,
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_fts_water_habcovref (
	osid uniqueidentifier not null,
	scheme nvarchar(20) not null,
	habitatcode nvarchar(5),
	habitatdescription nvarchar(80) not null,
	percentage integer,
	percentage_evidencedate date,
	percentage_updatedate date,
	featuretypeversiondate date not null,
	PRIMARY KEY (osid,featuretypeversiondate,habitatdescription)
);
CREATE TABLE wtr_fts_water_siteref (
	siteid uniqueidentifier not null,
	waterid uniqueidentifier not null,
	waterversiondate date not null,
	PRIMARY KEY (siteid,waterid,waterversiondate)
);
