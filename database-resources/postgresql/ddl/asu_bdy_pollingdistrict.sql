/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_bdy_pollingdistrict (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPolygon, 27700) not null,
	geometry_area numeric(18,6) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	pollingdistrictid varchar(10) not null,
	boundarytype varchar(50) not null,
	boundaryparentreference1_id uuid not null,
	boundaryparentreference1_featuretype varchar(50) not null,
	boundaryparentreference1_classification varchar(50) not null,
	boundaryparentreference1_name1_text varchar(254) not null,
	boundaryparentreference1_name1_language varchar(3),
	boundaryparentreference1_name2_text varchar(254),
	boundaryparentreference1_name2_language varchar(3),
	boundaryparentreference2_id uuid not null,
	boundaryparentreference2_featuretype varchar(50) not null,
	boundaryparentreference2_classification varchar(50) not null,
	boundaryparentreference2_name1_text varchar(254) not null,
	boundaryparentreference2_name1_language varchar(3),
	boundaryparentreference2_name2_text varchar(254),
	boundaryparentreference2_name2_language varchar(3),
	boundaryparentreference3_id uuid not null,
	boundaryparentreference3_featuretype varchar(50) not null,
	boundaryparentreference3_classification varchar(50) not null,
	boundaryparentreference3_name1_text varchar(254) not null,
	boundaryparentreference3_name1_language varchar(3),
	boundaryparentreference3_name2_text varchar(254),
	boundaryparentreference3_name2_language varchar(3),
	boundaryparentreference4_id uuid,
	boundaryparentreference4_featuretype varchar(50),
	boundaryparentreference4_classification varchar(50),
	boundaryparentreference4_name1_text varchar(254),
	boundaryparentreference4_name1_language varchar(3),
	boundaryparentreference4_name2_text varchar(254),
	boundaryparentreference4_name2_language varchar(3),
	landareahectares numeric(15,6) not null,
	tidalareahectares numeric(15,6) not null,
	totalareahectares numeric(15,6) not null,
	PRIMARY KEY (osid)
);
