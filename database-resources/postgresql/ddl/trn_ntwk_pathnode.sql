/* This DDL is based on data schema version 1.1 */
CREATE TABLE trn_ntwk_pathnode (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(PointZ, 7405) not null,
	theme varchar(40) not null,
	description varchar(9) not null,
	formofroadnode varchar(21) not null,
	classification varchar(21),
	PRIMARY KEY (osid)
);
