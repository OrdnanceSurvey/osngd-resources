/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_restriction (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(24) not null,
	restriction nvarchar(26) not null,
	trafficsign1 nvarchar(120),
	trafficsign2 nvarchar(120),
	"structure" nvarchar(40),
	inclusion nvarchar(1209),
	exemption nvarchar(1209),
	timeinterval nvarchar(254),
	measure1_value numeric(6,1),
	measure1_unitofmeasure nvarchar(4),
	measure1_sourceofmeasure nvarchar(10),
	measure2_value numeric(6,1),
	measure2_unitofmeasure nvarchar(4),
	measure2_sourceofmeasure nvarchar(10),
	atpositionxcoordinate numeric(10,3),
	atpositionycoordinate numeric(10,3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_restriction_datetimequal (
	datetimequalifierid uniqueidentifier,
	restrictionid uniqueidentifier,
	restrictionversiondate date,
	nameddate nvarchar(9),
	startdate date,
	enddate date,
	startmonthday nvarchar(6),
	endmonthday nvarchar(6),
	namedtime nvarchar(17),
	starttime nvarchar(8),
	endtime nvarchar(8),
	namedperiod nvarchar(28),
	namedday nvarchar(15),
	PRIMARY KEY (datetimequalifierid,restrictionversiondate)
);
CREATE TABLE trn_rami_restriction_restrictntwkref (
	networkreferenceid uniqueidentifier,
	networkfeaturetype nvarchar(9),
	roadlinkdirection nvarchar(21),
	roadlinksequence integer,
	restrictionid uniqueidentifier,
	restrictionversiondate date,
	PRIMARY KEY (networkreferenceid,restrictionid,restrictionversiondate)
);
