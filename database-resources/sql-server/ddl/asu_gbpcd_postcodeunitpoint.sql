/* This DDL is based on data schema version 1.1 */
CREATE TABLE asu_gbpcd_postcodeunitpoint (
	postcode nvarchar(8) not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	postcodenospace nvarchar(7) not null,
	postcodearea nvarchar(2) not null,
	postcodedistrict nvarchar(4) not null,
	postcodesector nvarchar(6) not null,
	postcodetype nvarchar(10) not null,
	postcodedeliverypointcount_total integer,
	postcodedeliverypointcount_residential integer,
	postcodedeliverypointcount_commercial integer,
	postcodedeliverypointcount_matched integer,
	postcodedeliverypointcount_unmatched integer,
	ispobox nvarchar(20),
	inputaddressaccuracy nvarchar(100) not null,
	easting numeric(8,2) not null,
	northing numeric(9,2) not null,
	latitude numeric(9,7) not null,
	longitude numeric(9,7) not null,
	PRIMARY KEY (postcode)
);
CREATE TABLE asu_gbpcd_postcodeunitpoint_rltenty (
	relatedentityid uniqueidentifier not null,
	featuretypeid nvarchar(36) not null,
	featuretypeversiondate date not null,
	crossreferencefeature nvarchar(50) not null,
	crossreferenceid nvarchar(36) not null,
	relationshiptype nvarchar(30) not null,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
