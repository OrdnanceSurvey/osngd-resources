/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_road (
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
	designatedname1_text varchar(254),
	designatedname1_language varchar(3),
	designatedname1_responsibleauthorityidentifier varchar(4),
	designatedname1_responsibleauthorityname varchar(100),
	designatedname2_text varchar(254),
	designatedname2_language varchar(3),
	designatedname2_responsibleauthorityidentifier varchar(4),
	designatedname2_responsibleauthorityname varchar(100),
	nationalroadcode varchar(10),
	roadclassification varchar(21),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_road_rdlinkref (
	roadlinkid uuid,
	roadid uuid,
	roadversiondate date,
	PRIMARY KEY (roadlinkid,roadid,roadversiondate)
);
