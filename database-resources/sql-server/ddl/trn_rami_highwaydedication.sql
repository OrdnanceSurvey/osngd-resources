/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_highwaydedication (
	osid uniqueidentifier not null,
	authorityid nvarchar(25) not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(35) not null,
	publicrightofway BIT not null,
	nationalcycleroute BIT not null,
	quietroute BIT,
	obstruction BIT not null,
	planningorder BIT,
	worksprohibited BIT,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_highwaydedication_hwydedntwkref (
	networkreferenceid uniqueidentifier,
	networkfeaturetype nvarchar(9),
	highwaydedicationid uniqueidentifier,
	highwaydedicationversiondate date,
	PRIMARY KEY (networkreferenceid,highwaydedicationid,highwaydedicationversiondate)
);
