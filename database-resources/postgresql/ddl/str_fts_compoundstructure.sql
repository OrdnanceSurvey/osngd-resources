/* This DDL is based on data schema version 2.0 */
CREATE TABLE str_fts_compoundstructure (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPolygon, 27700) not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(85),
	theme varchar(40) not null,
	description varchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(85),
	name1_text varchar(254),
	name1_language varchar(3),
	name1_evidencedate date,
	name1_updatedate date,
	name1_source varchar(85),
	name2_text varchar(254),
	name2_language varchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source varchar(85),
	name3_text varchar(254),
	name3_language varchar(3),
	name3_evidencedate date,
	name3_updatedate date,
	name3_source varchar(85),
	name4_text varchar(254),
	name4_language varchar(3),
	name4_evidencedate date,
	name4_updatedate date,
	name4_source varchar(85),
	operationalstatus varchar(10) not null,
	capturespecification varchar(10) not null,
	networkover varchar(10),
	networkunder varchar(10),
	PRIMARY KEY (osid)
);
