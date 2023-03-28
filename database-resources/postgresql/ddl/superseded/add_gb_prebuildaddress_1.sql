/* This DDL is based on data schema version 1.0 */
CREATE TABLE add_gb_prebuildaddress (
	uprn bigint not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	theme varchar(40) not null,
	description varchar(50) not null,
	organisationname varchar(100),
	poboxnumber varchar(13),
	subname varchar(110),
	name varchar(110),
	"number" varchar(13),
	streetname varchar(100) not null,
	locality varchar(35),
	townname varchar(35),
	islandname varchar(50),
	postcode varchar(8) not null,
	country varchar(16) not null,
	alternatelanguagesubname varchar(110),
	alternatelanguagename varchar(110),
	alternatelanguagenumber varchar(13),
	alternatelanguagestreetname varchar(100),
	alternatelanguagelocality varchar(35),
	alternatelanguagetownname varchar(35),
	alternatelanguageislandname varchar(50),
	alternatelanguage varchar(3),
	floorlevel varchar(30),
	classificationcode varchar(6) not null,
	classificationdescription varchar(230) not null,
	buildstatus varchar(12) not null,
	buildstatusdate date,
	addressstatus varchar(11) not null,
	postcodesource varchar(75) not null,
	parentuprn bigint,
	rootuprn bigint,
	hierarchylevel integer not null,
	usrn integer not null,
	usrnmatchindicator varchar(17) not null,
	localcustodiancode integer not null,
	localcustodiandescription varchar(35) not null,
	lowertierlocalauthoritygsscode varchar(9),
	easting numeric(8,2) not null,
	northing numeric(9,2) not null,
	latitude numeric(9,7) not null,
	longitude numeric(9,7) not null,
	geometry geometry(Point, 27700) not null,
	positionalaccuracy varchar(25) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_prebuildaddress_pstladd (
	udprn integer,
	uprn bigint not null,
	featuretypeversiondate date,
	organisationname varchar(60),
	departmentname varchar(60),
	subbuildingname varchar(30),
	buildingname varchar(50),
	buildingnumber varchar(4),
	dependentthoroughfare varchar(80),
	thoroughfare varchar(80),
	doubledependentlocality varchar(35),
	dependentlocality varchar(35),
	posttown varchar(30),
	postcode varchar(8) not null,
	postcodetype varchar(10),
	deliverypointsuffix varchar(2),
	welshdependentthoroughfare varchar(80),
	welshthoroughfare varchar(80),
	welshdoubledependentlocality varchar(35),
	welshdependentlocality varchar(35),
	welshposttown varchar(30),
	poboxnumber varchar(6),
	processdate date,
	"source" varchar(30),
	updatedate date,
	effectivestartdate date not null,
	effectiveenddate date,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_altadd (
	alternateaddressid uuid,
	uprn bigint not null,
	featuretypeversiondate date,
	usrn integer not null,
	addressstatus varchar(11) not null,
	alternatesubname varchar(110),
	alternatename varchar(110),
	alternatenumber varchar(13),
	streetname varchar(100) not null,
	locality varchar(35),
	townname varchar(35),
	islandname varchar(50),
	"language" varchar(3),
	postcode varchar(8) not null,
	floorlevel varchar(30),
	updatedate date,
	effectivestartdate date not null,
	effectiveenddate date,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_rltenty (
	relatedentityid uuid,
	uprn bigint not null,
	featuretypeversiondate date,
	crossreferencefeature varchar(40),
	crossreferenceid varchar(36),
	relationshiptype varchar(30),
	"source" varchar(110),
	updatedate date,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_otrclass (
	otherclassificationid uuid,
	uprn bigint not null,
	featuretypeversiondate date,
	classificationcode varchar(6) not null,
	classificationdescription varchar(230),
	classificationscheme varchar(60),
	schemeversion varchar(60),
	updatedate date,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
