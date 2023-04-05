/* This DDL is based on data schema version 1.0 */
CREATE TABLE ADD_GB_STREETADDRESS (
	USRN NUMBER(8) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	STREETTYPE VARCHAR2(33) not null,
	CLASSIFICATION VARCHAR2(26),
	OPERATIONALSTATE VARCHAR2(18),
	OPERATIONALSTATEDATE DATE,
	STREETNAME VARCHAR2(100) not null,
	LOCALITY VARCHAR2(35),
	TOWNNAME VARCHAR2(35),
	ADMINISTRATIVEAREA VARCHAR2(35) not null,
	COUNTRY VARCHAR2(16) not null,
	ALTERNATELANGUAGESTREETNAME VARCHAR2(110),
	ALTERNATELANGUAGELOCALITY VARCHAR2(110),
	ALTERNATELANGUAGETOWNNAME VARCHAR2(35),
	ALTERNATELANGUAGEADMINISTRATIVEAREA VARCHAR2(35),
	ALTERNATELANGUAGE VARCHAR2(3),
	SNNAUTHORITYCODE VARCHAR2(4) not null,
	SNNAUTHORITYDESCRIPTION VARCHAR2(35) not null,
	SURFACEMATERIAL VARCHAR2(10),
	STARTEASTING NUMERIC(8,2) not null,
	STARTNORTHING NUMERIC(9,2) not null,
	ENDEASTING NUMERIC(8,2) not null,
	ENDNORTHING NUMERIC(9,2) not null,
	STARTLATITUDE NUMERIC(9,7) not null,
	STARTLONGITUDE NUMERIC(9,7) not null,
	ENDLATITUDE NUMERIC(9,7) not null,
	ENDLONGITUDE NUMERIC(9,7) not null,
	GEOMETRY SDO_GEOMETRY not null,
	STREETTOLERANCE NUMBER(3) not null,
	EFFECTIVESTARTDATE DATE not null,
	EFFECTIVEENDDATE DATE,
	PRIMARY KEY (usrn)
);