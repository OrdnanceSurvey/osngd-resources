/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_specialdesignationline (
	osid uniqueidentifier not null,
	authorityid nvarchar(17) not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(20) not null,
	designation nvarchar(70) not null,
	designationdescription nvarchar(254),
	locationdescription nvarchar(250),
	timeinterval nvarchar(254),
	contactauthority_identifier nvarchar(4),
	contactauthority_authorityname nvarchar(100),
	partialreference BIT not null,
	usrn integer not null,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_specialdesignationline_datetimequal (
	datetimequalifierid uniqueidentifier,
	specialdesignationid uniqueidentifier,
	specialdesignationversiondate date,
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
	PRIMARY KEY (datetimequalifierid,specialdesignationversiondate)
);
