/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_connectinglink (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineStringZ, 7405) not null,
	geometry_length numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(15) not null,
	connectingnodeid uuid not null,
	pathnodeid uuid not null,
	PRIMARY KEY (osid)
);
