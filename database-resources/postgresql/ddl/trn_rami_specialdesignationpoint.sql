/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_specialdesignationpoint (
	osid uuid not null,
	authorityid varchar(17) not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	geometry geometry(MultiPoint, 27700) not null,
	theme varchar(40) not null,
	description varchar(20) not null,
	designation varchar(70) not null,
	designationdescription varchar(254),
	locationdescription varchar(250),
	timeinterval varchar(254),
	contactauthority_identifier varchar(4),
	contactauthority_authorityname varchar(100),
	partialreference boolean not null,
	usrn integer not null,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_specialdesignationpoint_datetimequal (
	datetimequalifierid uuid,
	specialdesignationid uuid,
	specialdesignationversiondate date,
	nameddate varchar(9),
	startdate date,
	enddate date,
	startmonthday varchar(6),
	endmonthday varchar(6),
	namedtime varchar(17),
	starttime varchar(8),
	endtime varchar(8),
	namedperiod varchar(28),
	namedday varchar(15),
	PRIMARY KEY (datetimequalifierid,specialdesignationversiondate)
);
