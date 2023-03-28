/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_bdy_glaassemblyconstituency (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Polygon, 27700) not null,
	geometry_area numeric(18,6) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	name1_text varchar(254) not null,
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	gsscode varchar(10) not null,
	boundarytype varchar(50) not null,
	boundaryparentreference_id uuid not null,
	boundaryparentreference_featuretype varchar(50) not null,
	boundaryparentreference_classification varchar(50) not null,
	boundaryparentreference_name1_text varchar(254) not null,
	boundaryparentreference_name1_language varchar(3),
	boundaryparentreference_name2_text varchar(254),
	boundaryparentreference_name2_language varchar(3),
	landareahectares numeric(15,6) not null,
	tidalareahectares numeric(15,6) not null,
	totalareahectares numeric(15,6) not null,
	PRIMARY KEY (osid)
);
