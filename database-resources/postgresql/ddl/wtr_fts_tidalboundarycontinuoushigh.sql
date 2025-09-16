/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_fts_tidalboundarycontinuoushigh (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineString, 27700) not null,
	geometry_length_m numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	theme varchar(40) not null,
	description varchar(25) not null,
	description_evidencedate date,
	description_updatedate date not null,
	iscoincidentwithlow boolean not null,
	PRIMARY KEY (osid)
);
