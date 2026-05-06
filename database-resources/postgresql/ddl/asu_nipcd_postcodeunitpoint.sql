/* This DDL is based on data schema version 1.1 */
CREATE TABLE asu_nipcd_postcodeunitpoint (
	postcode varchar(8) not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 4258) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	postcodenospace varchar(7) not null,
	postcodearea varchar(2) not null,
	postcodedistrict varchar(4) not null,
	postcodesector varchar(6) not null,
	postcodetype varchar(10) not null,
	postcodedeliverypointcount_total integer,
	postcodedeliverypointcount_residential integer,
	postcodedeliverypointcount_commercial integer,
	postcodedeliverypointcount_matched integer,
	postcodedeliverypointcount_unmatched integer,
	ispobox varchar(20),
	inputaddressaccuracy varchar(100) not null,
	easting numeric(8,2) not null,
	northing numeric(9,2) not null,
	latitude numeric(9,7) not null,
	longitude numeric(9,7) not null,
	PRIMARY KEY (postcode)
);
CREATE TABLE asu_nipcd_postcodeunitpoint_rltenty (
	relatedentityid uuid not null,
	featuretypeid varchar(36) not null,
	featuretypeversiondate date not null,
	crossreferencefeature varchar(50) not null,
	crossreferenceid varchar(36) not null,
	relationshiptype varchar(30) not null,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
