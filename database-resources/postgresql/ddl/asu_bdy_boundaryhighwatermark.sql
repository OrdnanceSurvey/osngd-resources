/* This DDL is based on data schema version 1.1 */
CREATE TABLE asu_bdy_boundaryhighwatermark (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineString, 27700) not null,
	geometry_length numeric(18,6) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	boundarytype varchar(50) not null,
	PRIMARY KEY (osid)
);
