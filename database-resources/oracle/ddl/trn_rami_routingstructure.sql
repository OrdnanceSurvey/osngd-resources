/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_RAMI_ROUTINGSTRUCTURE (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH NUMERIC(15,6) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(40) not null,
	STRUCTUREDESCRIPTION VARCHAR2(50),
	ATPOSITIONXCOORDINATE NUMERIC(10,3),
	ATPOSITIONYCOORDINATE NUMERIC(10,3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_routingstructure_routstructntwkref (
	NETWORKREFERENCEID VARCHAR2(36),
	NETWORKFEATURETYPE VARCHAR2(9),
	ROUTINGSTRUCTUREID VARCHAR2(9),
	ROUTINGSTRUCTUREVERSIONDATE DATE,
	PRIMARY KEY (networkreferenceid,routingstructureid,routingstructureversiondate)
);
