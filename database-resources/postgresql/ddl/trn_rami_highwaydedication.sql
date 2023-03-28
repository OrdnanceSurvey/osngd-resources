/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_highwaydedication (
	osid uuid not null,
	authorityid varchar(25) not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	geometry geometry(LineString, 27700) not null,
	geometry_length numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(35) not null,
	publicrightofway boolean not null,
	nationalcycleroute boolean not null,
	quietroute boolean,
	obstruction boolean not null,
	planningorder boolean,
	worksprohibited boolean,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_highwaydedication_hwydedntwkref (
	networkreferenceid uuid,
	networkfeaturetype varchar(9),
	highwaydedicationid uuid,
	highwaydedicationversiondate date,
	PRIMARY KEY (networkreferenceid,highwaydedicationid,highwaydedicationversiondate)
);
