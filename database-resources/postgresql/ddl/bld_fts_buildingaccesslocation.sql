/* This DDL is based on data schema version 1.0 */
CREATE TABLE bld_fts_buildingaccesslocation (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	geometry_evidencedate date not null,
	geometry_updatedate date not null,
	geometry_capturemethod varchar(25) not null,
	theme varchar(40) not null,
	description varchar(25) not null,
	access_mode varchar(25) not null,
	access_purpose varchar(15) not null,
	access_obstruction varchar(37) not null,
	access_level varchar(20) not null,
	access_evidencedate date not null,
	access_updatedate date not null,
	accessedbuildingid varchar(36),
	PRIMARY KEY (osid)
);
