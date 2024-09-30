/* This DDL is based on data schema version 3.0 */
CREATE TABLE trn_fts_rail (
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
	description varchar(40) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_capturemethod varchar(25) not null,
	oslandcovertiera varchar(15) not null,
	oslandcovertierb varchar(120) not null,
	oslandcover_evidencedate date,
	oslandcover_updatedate date not null,
	oslandcover_capturemethod varchar(25) not null,
	oslandusetiera varchar(50) not null,
	oslandusetierb varchar(88),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_capturemethod varchar(25) not null,
	associatedstructure varchar(25),
	isobscured boolean not null,
	physicallevel varchar(15) not null,
	capturespecification varchar(10) not null,
	containingsitecount integer not null,
	smallestsite_siteid uuid,
	smallestsite_landusetiera varchar(50),
	smallestsite_landusetierb varchar(88),
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
CREATE TABLE trn_fts_rail_habcovref (
	osid uuid not null,
	scheme varchar(20) not null,
	habitatcode varchar(5),
	habitatdescription varchar(80) not null,
	percentage integer,
	percentage_evidencedate date,
	percentage_updatedate date,
	featuretypeversiondate date not null,
	PRIMARY KEY (osid,featuretypeversiondate,habitatdescription)
);
CREATE TABLE trn_fts_rail_siteref (
	siteid uuid not null,
	railid uuid not null,
	railversiondate date not null,
	PRIMARY KEY (siteid,railid,railversiondate)
);
