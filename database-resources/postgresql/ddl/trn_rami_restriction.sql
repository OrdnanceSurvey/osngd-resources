/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_restriction (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiLineString, 27700) not null,
	geometry_length numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(24) not null,
	restriction varchar(26) not null,
	trafficsign1 varchar(120),
	trafficsign2 varchar(120),
	"structure" varchar(40),
	inclusion varchar(1209),
	exemption varchar(1209),
	timeinterval varchar(254),
	measure1_value numeric(6,1),
	measure1_unitofmeasure varchar(4),
	measure1_sourceofmeasure varchar(10),
	measure2_value numeric(6,1),
	measure2_unitofmeasure varchar(4),
	measure2_sourceofmeasure varchar(10),
	atpositionxcoordinate numeric(10,3),
	atpositionycoordinate numeric(10,3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_restriction_datetimequal (
	datetimequalifierid uuid,
	restrictionid uuid,
	restrictionversiondate date,
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
	PRIMARY KEY (datetimequalifierid,restrictionversiondate)
);
CREATE TABLE trn_rami_restriction_restrictntwkref (
	networkreferenceid uuid,
	networkfeaturetype varchar(9),
	roadlinkdirection varchar(21),
	roadlinksequence integer,
	restrictionid uuid,
	restrictionversiondate date,
	PRIMARY KEY (networkreferenceid,restrictionid,restrictionversiondate)
);
