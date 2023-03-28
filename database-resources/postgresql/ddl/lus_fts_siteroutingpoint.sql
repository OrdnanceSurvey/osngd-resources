/* This DDL is based on data schema version 1.0 */
CREATE TABLE lus_fts_siteroutingpoint (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(15) not null,
	startdistance numeric(7,2),
	roadlinkid uuid,
	PRIMARY KEY (osid)
);
