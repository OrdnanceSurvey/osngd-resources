/* This DDL is based on data schema version 2.0 */
CREATE TABLE bld_fts_buildingpart (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	firstdigitalcapturedate date,
	changetype varchar(50) not null,
	geometry geometry(Polygon, 27700) not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_capturemethod varchar(25) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_capturemethod varchar(25) not null,
	oslandcovertiera varchar(15) not null,
	oslandcovertierb varchar(20) not null,
	oslandcover_evidencedate date,
	oslandcover_updatedate date not null,
	oslandcover_capturemethod varchar(25) not null,
	oslandusetiera varchar(50) not null,
	oslandusetierb varchar(88),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_capturemethod varchar(25) not null,
	height_absoluteroofbase_m numeric(5,1),
	height_relativeroofbase_m numeric(4,1),
	height_absolutemax_m numeric(5,1),
	height_relativemax_m numeric(4,1),
	height_absolutemin_m numeric(5,1),
	height_confidencelevel varchar(15),
	height_evidencedate date,
	height_updatedate date,
	associatedstructure varchar(25),
	isobscured boolean not null,
	physicallevel varchar(15) not null,
	capturespecification varchar(10) not null,
	containingsitecount integer not null,
	smallestsite_siteid uuid,
	smallestsite_landusetiera varchar(50),
	smallestsite_landusetierb varchar(200),
	largestsite_landusetiera varchar(50),
	largestsite_landusetierb varchar(88),
	nlud_code varchar(4),
	nlud_orderdescription varchar(30),
	nlud_groupdescription varchar(40),
	address_classificationcode varchar(2),
	address_primarydescription varchar(120),
	address_secondarydescription varchar(120),
	lowertierlocalauthority_gsscode varchar(10),
	lowertierlocalauthority_count integer not null,
	status varchar(10),
	status_updatedate date,
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_buildingpart_siteref (
	siteid uuid not null,
	buildingpartid uuid not null,
	buildingpartversiondate date not null,
	PRIMARY KEY (siteid,buildingpartid,buildingpartversiondate)
);
