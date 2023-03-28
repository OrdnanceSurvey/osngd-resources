/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_ferrylink (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineStringZ, 7405) not null,
	geometry_length numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(10) not null,
	fictitious boolean,
	vehicularferry boolean not null,
	routeoperator varchar(250),
	startnode uuid not null,
	endnode uuid not null,
	PRIMARY KEY (osid)
);
