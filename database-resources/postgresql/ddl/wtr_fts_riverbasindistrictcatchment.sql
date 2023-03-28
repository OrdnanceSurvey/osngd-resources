/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_fts_riverbasindistrictcatchment (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPolygon, 27700) not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_source varchar(85),
	theme varchar(40) not null,
	description varchar(30) not null,
	riverbasindistrictid integer not null,
	riverbasindistrictname varchar(15) not null,
	PRIMARY KEY (osid)
);
