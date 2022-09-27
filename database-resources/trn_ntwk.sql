CREATE TABLE trn_ntwk_connectinglink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(15) not null,
	connectingnodeid uniqueidentifier not null,
	pathnodeid uniqueidentifier not null,
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_connectingnode (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(15) not null,
	roadlinkid uniqueidentifier,
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_ferrylink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(10) not null,
	fictitious boolean,
	vehicularferry boolean not null,
	routeoperator nvarchar(250),
	startnode uniqueidentifier not null,
	endnode uniqueidentifier not null,
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_ferrynode (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(10) not null,
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_ferryterminal (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(14) not null,
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	ferryterminalcode nvarchar(10),
	roadnodeid uniqueidentifier,
	pathnodeid uniqueidentifier,
	ferrynodeid uniqueidentifier not null,
	siteid uniqueidentifier,
	mssql_geom as geometry::STGeomFromText(geometry, 27700) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_path (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(4) not null,
	name1_text nvarchar(254) not null,
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	mssql_geom as geometry::STGeomFromText(geometry, 27700) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_path_pathlinkref (
	pathlinkid uniqueidentifier,
	pathid uniqueidentifier,
	pathversiondate date,
	PRIMARY KEY (pathlinkid,pathid,pathversiondate)
);
CREATE TABLE trn_ntwk_pathlink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(42) not null,
	pathname1_text nvarchar(254),
	pathname1_language nvarchar(3),
	pathname2_text nvarchar(254),
	pathname2_language nvarchar(3),
	alternatename1_text nvarchar(254),
	alternatename1_language nvarchar(3),
	alternatename2_text nvarchar(254),
	alternatename2_language nvarchar(3),
	surfacetype nvarchar(13),
	cyclefacility nvarchar(45),
	cyclefacility_wholelink boolean,
	elevationgain_indirection numeric(6,1) not null,
	elevationgain_againstdirection numeric(6,1) not null,
	heightingmethod nvarchar(19) not null,
	capturespecification nvarchar(10) not null,
	matchstatus nvarchar(39) not null,
	startnode uniqueidentifier not null,
	startgradeseparation integer not null,
	endnode uniqueidentifier not null,
	endgradeseparation integer not null,
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_pathnode (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(9) not null,
	formofroadnode nvarchar(21) not null,
	classification nvarchar(21),
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_road (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(4) not null,
	designatedname1_text nvarchar(254),
	designatedname1_language nvarchar(3),
	designatedname1_responsibleauthorityidentifier nvarchar(4),
	designatedname1_responsibleauthorityname nvarchar(100),
	designatedname2_text nvarchar(254),
	designatedname2_language nvarchar(3),
	designatedname2_responsibleauthorityidentifier nvarchar(4),
	designatedname2_responsibleauthorityname nvarchar(100),
	nationalroadcode nvarchar(10),
	roadclassification nvarchar(21),
	mssql_geom as geometry::STGeomFromText(geometry, 27700) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_road_rdlinkref (
	roadlinkid uniqueidentifier,
	roadid uniqueidentifier,
	roadversiondate date,
	PRIMARY KEY (roadlinkid,roadid,roadversiondate)
);
CREATE TABLE trn_ntwk_roadjunction (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(26) not null,
	name1_text nvarchar(254) not null,
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	roadclassificationnumber nvarchar(10),
	junctionnumber nvarchar(10),
	mssql_geom as geometry::STGeomFromText(geometry, 27700) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadjunction_rdnoderef (
	roadnodeid uniqueidentifier,
	roadjunctionid uniqueidentifier,
	roadjunctionversiondate date,
	PRIMARY KEY (roadnodeid,roadjunctionid,roadjunctionversiondate)
);
CREATE TABLE trn_ntwk_roadlink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(42) not null,
	roadclassification nvarchar(21) not null,
	routehierarchy nvarchar(32) not null,
	trunkroad boolean,
	primaryroute boolean,
	roadclassificationnumber nvarchar(10),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	alternatename1_text nvarchar(254),
	alternatename1_language nvarchar(3),
	alternatename2_text nvarchar(254),
	alternatename2_language nvarchar(3),
	operationalstate nvarchar(19) not null,
	directionality nvarchar(21) not null,
	cyclefacility nvarchar(45),
	cyclefacility_wholelink boolean,
	roadstructure nvarchar(14),
	roadwidth_average numeric(3,1),
	roadwidth_minimum numeric(3,1),
	roadwidth_confidencelevel nvarchar(27),
	elevationgain_indirection numeric(6,1) not null,
	elevationgain_againstdirection numeric(6,1) not null,
	heightingmethod nvarchar(19) not null,
	capturespecification nvarchar(10) not null,
	matchstatus nvarchar(39) not null,
	startnode uniqueidentifier not null,
	startgradeseparation integer,
	endnode uniqueidentifier not null,
	endgradeseparation integer,
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadlink_rdtrkpthref (
	roadtrackorpathid uniqueidentifier,
	roadlinkid uniqueidentifier,
	roadlinkversiondate date,
	PRIMARY KEY (roadtrackorpathid,roadlinkid,roadlinkversiondate)
);
CREATE TABLE trn_ntwk_roadnode (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(21) not null,
	formofroadnode nvarchar(21) not null,
	junctionnumber1 nvarchar(30),
	junctionnumber2 nvarchar(30),
	junctionname1_text nvarchar(254),
	junctionname1_language nvarchar(3),
	junctionname2_text nvarchar(254),
	junctionname2_language nvarchar(3),
	mssql_geom as geometry::STGeomFromText(geometry, 7405) persisted,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadnode_rdtrkpthref (
	roadtrackorpathid uniqueidentifier,
	roadnodeid uniqueidentifier,
	roadnodeversiondate date,
	PRIMARY KEY (roadtrackorpathid,roadnodeid,roadnodeversiondate)
);
CREATE TABLE trn_ntwk_street (
	usrn integer not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	geometry_source nvarchar(23) not null,
	theme nvarchar(40) not null,
	description nvarchar(35) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	designatedname1_text nvarchar(254),
	designatedname1_language nvarchar(3),
	designatedname1_responsibleauthorityidentifier nvarchar(4),
	designatedname1_responsibleauthorityname nvarchar(100),
	designatedname2_text nvarchar(254),
	designatedname2_language nvarchar(3),
	designatedname2_responsibleauthorityidentifier nvarchar(4),
	designatedname2_responsibleauthorityname nvarchar(100),
	localname1_text nvarchar(254),
	localname1_language nvarchar(3),
	localname2_text nvarchar(254),
	localname2_language nvarchar(3),
	descriptor1_text nvarchar(254),
	descriptor1_language nvarchar(3),
	descriptor2_text nvarchar(254),
	descriptor2_language nvarchar(3),
	localroadcode nvarchar(120),
	nationalroadcode nvarchar(10),
	roadclassification nvarchar(21),
	operationalstate nvarchar(19),
	operationalstatedate date,
	locality1_text nvarchar(254),
	locality1_language nvarchar(3),
	locality2_text nvarchar(254),
	locality2_language nvarchar(3),
	townname1_text nvarchar(254),
	townname1_language nvarchar(3),
	townname2_text nvarchar(254),
	townname2_language nvarchar(3),
	administrativearea1_text nvarchar(254) not null,
	administrativearea1_language nvarchar(3),
	administrativearea2_text nvarchar(254),
	administrativearea2_language nvarchar(3),
	responsibleauthority_identifier nvarchar(4) not null,
	responsibleauthority_name nvarchar(100) not null,
	gsscoderole1 nvarchar(27),
	gsscode1 nvarchar(9),
	gsscoderole2 nvarchar(27),
	gsscode2 nvarchar(9),
	mssql_geom as geometry::STGeomFromText(geometry, 27700) persisted,
	PRIMARY KEY (usrn)
);
CREATE TABLE trn_ntwk_street_pathlinkref (
	pathlinkid uniqueidentifier,
	usrn integer not null,
	streetversiondate date,
	PRIMARY KEY (pathlinkid,usrn,streetversiondate)
);
CREATE TABLE trn_ntwk_street_rdlinkref (
	usrn integer not null,
	streetversiondate date,
	roadlinkid uniqueidentifier,
	PRIMARY KEY (roadlinkid,usrn,streetversiondate)
);
