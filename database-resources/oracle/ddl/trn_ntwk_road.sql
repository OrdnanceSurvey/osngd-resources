/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_NTWK_ROAD (
	OSID VARCHAR2(32) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH NUMERIC(15,6) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(4) not null,
	DESIGNATEDNAME1_TEXT VARCHAR2(254),
	DESIGNATEDNAME1_LANGUAGE VARCHAR2(3),
	DESIGNATEDNAME1_RESPONSIBLEAUTHORITYIDENTIFIER VARCHAR2(4),
	DESIGNATEDNAME1_RESPONSIBLEAUTHORITYNAME VARCHAR2(100),
	DESIGNATEDNAME2_TEXT VARCHAR2(254),
	DESIGNATEDNAME2_LANGUAGE VARCHAR2(3),
	DESIGNATEDNAME2_RESPONSIBLEAUTHORITYIDENTIFIER VARCHAR2(4),
	DESIGNATEDNAME2_RESPONSIBLEAUTHORITYNAME VARCHAR2(100),
	NATIONALROADCODE VARCHAR2(10),
	ROADCLASSIFICATION VARCHAR2(21),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_road_rdlinkref (
	ROADLINKID VARCHAR2(32),
	ROADID VARCHAR2(32),
	ROADVERSIONDATE DATE,
	PRIMARY KEY (roadlinkid,roadid,roadversiondate)
);
