/* This DDL is based on data schema version 1.1 */
CREATE TABLE asu_bdy_historiccounty (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPolygon, 27700) not null,
	geometry_area numeric(18,6) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	name1_text varchar(254) not null,
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	boundarytype varchar(50) not null,
	landareahectares numeric(15,6) not null,
	tidalareahectares numeric(15,6) not null,
	totalareahectares numeric(15,6) not null,
	PRIMARY KEY (osid)
);
