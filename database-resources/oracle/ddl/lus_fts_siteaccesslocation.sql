/* This DDL is based on data schema version 2.0 */
CREATE TABLE LUS_FTS_SITEACCESSLOCATION (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_CAPTUREMETHOD VARCHAR2(25),
	GEOMETRY_UPDATEDATE DATE not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(15) not null,
	ACCESS_MODE VARCHAR2(25) not null,
	ACCESS_PURPOSE VARCHAR2(30),
	ACCESS_EVIDENCEDATE DATE,
	ACCESS_UPDATEDATE DATE not null,
	ACCESSEDSITEID VARCHAR2(36) not null,
	ACCESSEDNETWORKNODEFEATURETYPE VARCHAR2(20),
	ACCESSEDNETWORKNODEID VARCHAR2(36),
	DISTANCETONETWORKNODE_M NUMERIC(5,1),
	PRIMARY KEY (osid)
);
