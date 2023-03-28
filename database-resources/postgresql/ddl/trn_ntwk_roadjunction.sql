/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_roadjunction (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPoint, 27700) not null,
	theme varchar(40) not null,
	description varchar(26) not null,
	name1_text varchar(254) not null,
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	roadclassificationnumber varchar(10),
	junctionnumber varchar(10),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadjunction_rdnoderef (
	roadnodeid uuid,
	roadjunctionid uuid,
	roadjunctionversiondate date,
	PRIMARY KEY (roadnodeid,roadjunctionid,roadjunctionversiondate)
);
