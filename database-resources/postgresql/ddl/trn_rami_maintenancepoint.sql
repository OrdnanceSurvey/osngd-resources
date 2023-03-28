/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_maintenancepoint (
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
	maintenanceresponsibility varchar(60) not null,
	maintenanceauthority_identifier varchar(4),
	maintenanceauthority_authorityname varchar(100),
	highwayauthority_identifier varchar(4) not null,
	highwayauthority_authorityname varchar(100) not null,
	locationdescription varchar(250),
	partialreference boolean not null,
	usrn integer not null,
	PRIMARY KEY (osid)
);
