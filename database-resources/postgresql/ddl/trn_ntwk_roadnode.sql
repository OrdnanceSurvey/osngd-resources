/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_roadnode (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(PointZ, 7405) not null,
	theme varchar(40) not null,
	description varchar(21) not null,
	formofroadnode varchar(21) not null,
	junctionnumber1 varchar(30),
	junctionnumber2 varchar(30),
	junctionname1_text varchar(254),
	junctionname1_language varchar(3),
	junctionname2_text varchar(254),
	junctionname2_language varchar(3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadnode_rdtrkpthref (
	roadtrackorpathid uuid,
	roadnodeid uuid,
	roadnodeversiondate date,
	PRIMARY KEY (roadtrackorpathid,roadnodeid,roadnodeversiondate)
);
