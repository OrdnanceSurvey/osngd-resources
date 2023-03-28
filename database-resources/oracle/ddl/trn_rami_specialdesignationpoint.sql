/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_RAMI_SPECIALDESIGNATIONPOINT (
	OSID VARCHAR2(32) not null,
	AUTHORITYID VARCHAR2(17) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	EFFECTIVESTARTDATE DATE not null,
	EFFECTIVEENDDATE DATE,
	GEOMETRY SDO_GEOMETRY not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(20) not null,
	DESIGNATION VARCHAR2(70) not null,
	DESIGNATIONDESCRIPTION VARCHAR2(254),
	LOCATIONDESCRIPTION VARCHAR2(250),
	TIMEINTERVAL VARCHAR2(254),
	CONTACTAUTHORITY_IDENTIFIER VARCHAR2(4),
	CONTACTAUTHORITY_AUTHORITYNAME VARCHAR2(100),
	PARTIALREFERENCE NUMBER(1) not null,
	USRN NUMBER(8) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_specialdesignationpoint_datetimequal (
	DATETIMEQUALIFIERID VARCHAR2(32),
	SPECIALDESIGNATIONID VARCHAR2(32),
	SPECIALDESIGNATIONVERSIONDATE DATE,
	NAMEDDATE VARCHAR2(9),
	STARTDATE DATE,
	ENDDATE DATE,
	STARTMONTHDAY VARCHAR2(6),
	ENDMONTHDAY VARCHAR2(6),
	NAMEDTIME VARCHAR2(17),
	STARTTIME VARCHAR2(8),
	ENDTIME VARCHAR2(8),
	NAMEDPERIOD VARCHAR2(28),
	NAMEDDAY VARCHAR2(15),
	PRIMARY KEY (datetimequalifierid,specialdesignationversiondate)
);
