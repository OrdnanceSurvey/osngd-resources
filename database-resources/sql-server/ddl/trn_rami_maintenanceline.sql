/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_maintenanceline (
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
	maintenanceresponsibility nvarchar(60) not null,
	maintenanceauthority_identifier nvarchar(4),
	maintenanceauthority_authorityname nvarchar(100),
	highwayauthority_identifier nvarchar(4) not null,
	highwayauthority_authorityname nvarchar(100) not null,
	locationdescription nvarchar(250),
	partialreference BIT not null,
	usrn integer not null,
	PRIMARY KEY (osid)
);
