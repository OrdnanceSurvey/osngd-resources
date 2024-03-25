/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_tramonroad (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineString, 27700) not null,
	geometry_length_m numeric(15,3) not null,
	theme varchar(40) not null,
	description varchar(12) not null,
	roadlinkid uuid not null,
	PRIMARY KEY (osid)
);
