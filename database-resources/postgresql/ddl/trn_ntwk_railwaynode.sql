/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_railwaynode (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	theme varchar(40) not null,
	description varchar(25) not null,
	PRIMARY KEY (osid)
);
