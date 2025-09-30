/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_ntwk_waternode (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(PointZ, 7405) not null,
	theme varchar(40) not null,
	description varchar(12) not null,
	PRIMARY KEY (osid)
);
