/* This DDL is based on data schema version 1.0 */
CREATE TABLE add_gb_builtaddress (
	uprn bigint not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	organisationname nvarchar(100),
	poboxnumber nvarchar(13),
	subname nvarchar(110),
	name nvarchar(110),
	"number" nvarchar(13),
	streetname nvarchar(100) not null,
	locality nvarchar(35),
	townname nvarchar(35),
	islandname nvarchar(50),
	postcode nvarchar(8) not null,
	country nvarchar(16) not null,
	alternatelanguagesubname nvarchar(110),
	alternatelanguagename nvarchar(110),
	alternatelanguagenumber nvarchar(13),
	alternatelanguagestreetname nvarchar(100),
	alternatelanguagelocality nvarchar(35),
	alternatelanguagetownname nvarchar(35),
	alternatelanguageislandname nvarchar(50),
	alternatelanguage nvarchar(3),
	floorlevel nvarchar(30),
	classificationcode nvarchar(6) not null,
	classificationdescription nvarchar(230) not null,
	buildstatus nvarchar(12) not null,
	buildstatusdate date,
	addressstatus nvarchar(11) not null,
	postcodesource nvarchar(75) not null,
	parentuprn bigint,
	rootuprn bigint,
	hierarchylevel integer not null,
	usrn integer not null,
	usrnmatchindicator nvarchar(17) not null,
	localcustodiancode integer not null,
	localcustodiandescription nvarchar(35) not null,
	lowertierlocalauthoritygsscode nvarchar(9),
	easting numeric(8,2) not null,
	northing numeric(9,2) not null,
	latitude numeric(9,7) not null,
	longitude numeric(9,7) not null,
	geometry geometry not null,
	positionalaccuracy nvarchar(25) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_builtaddress_pstladd (
	udprn integer,
	uprn bigint not null,
	featuretypeversiondate date,
	organisationname nvarchar(60),
	departmentname nvarchar(60),
	subbuildingname nvarchar(30),
	buildingname nvarchar(50),
	buildingnumber nvarchar(4),
	dependentthoroughfare nvarchar(80),
	thoroughfare nvarchar(80),
	doubledependentlocality nvarchar(35),
	dependentlocality nvarchar(35),
	posttown nvarchar(30),
	postcode nvarchar(8) not null,
	postcodetype nvarchar(10),
	deliverypointsuffix nvarchar(2),
	welshdependentthoroughfare nvarchar(80),
	welshthoroughfare nvarchar(80),
	welshdoubledependentlocality nvarchar(35),
	welshdependentlocality nvarchar(35),
	welshposttown nvarchar(30),
	poboxnumber nvarchar(6),
	processdate date,
	"source" nvarchar(30),
	updatedate date,
	effectivestartdate date not null,
	effectiveenddate date,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_builtaddress_altadd (
	alternateaddressid uniqueidentifier,
	uprn bigint not null,
	featuretypeversiondate date,
	usrn integer not null,
	addressstatus nvarchar(11) not null,
	alternatesubname nvarchar(110),
	alternatename nvarchar(110),
	alternatenumber nvarchar(13),
	streetname nvarchar(100) not null,
	locality nvarchar(35),
	townname nvarchar(35),
	islandname nvarchar(50),
	"language" nvarchar(3),
	postcode nvarchar(8) not null,
	floorlevel nvarchar(30),
	updatedate date,
	effectivestartdate date not null,
	effectiveenddate date,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_builtaddress_rltenty (
	relatedentityid uniqueidentifier,
	uprn bigint not null,
	featuretypeversiondate date,
	crossreferencefeature nvarchar(40),
	crossreferenceid nvarchar(36),
	relationshiptype nvarchar(30),
	"source" nvarchar(110),
	updatedate date,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_builtaddress_otrclass (
	otherclassificationid uniqueidentifier,
	uprn bigint not null,
	featuretypeversiondate date,
	classificationcode nvarchar(6) not null,
	classificationdescription nvarchar(230),
	classificationscheme nvarchar(60),
	schemeversion nvarchar(60),
	updatedate date,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
