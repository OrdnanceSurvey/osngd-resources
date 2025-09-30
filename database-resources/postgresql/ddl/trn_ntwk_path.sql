/* This DDL is based on data schema version 1.1 */
CREATE TABLE trn_ntwk_path (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiLineString, 27700) not null,
	geometry_length numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(4) not null,
	name1_text varchar(254) not null,
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_path_pathlinkref (
	pathlinkid uuid,
	pathid uuid,
	pathversiondate date,
	PRIMARY KEY (pathlinkid,pathid,pathversiondate)
);
