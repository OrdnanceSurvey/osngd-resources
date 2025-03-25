/* This DDL is based on data schema version 4.0 */
CREATE TABLE trn_ntwk_roadlink (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineStringZ, 7405) not null,
	geometry_length_m numeric(15,3) not null,
	theme varchar(40) not null,
	description varchar(42) not null,
	roadclassification varchar(21) not null,
	routehierarchy varchar(32) not null,
	trunkroad boolean not null,
	primaryroute boolean not null,
	roadclassificationnumber varchar(10),
	name1_text varchar(254),
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	alternatename1_text varchar(254),
	alternatename1_language varchar(3),
	alternatename2_text varchar(254),
	alternatename2_language varchar(3),
	operationalstate varchar(19) not null,
	directionality varchar(21) not null,
	cyclefacility varchar(50),
	cyclefacility_wholelink boolean,
	roadstructure varchar(14),
	roadwidth_average numeric(3,1),
	roadwidth_minimum numeric(3,1),
	roadwidth_confidencelevel varchar(27),
	elevationgain_indirection numeric(6,1) not null,
	elevationgain_againstdirection numeric(6,1) not null,
	heightingmethod varchar(19) not null,
	capturespecification varchar(10) not null,
	matchstatus varchar(39) not null,
	startnode uuid not null,
	startgradeseparation integer,
	endnode uuid not null,
	endgradeseparation integer,
	presenceofpavement_overall_m numeric(6,2) not null,
	presenceofpavement_overallpercentage integer not null,
	presenceofpavement_left_m numeric(6,2) not null,
	presenceofpavement_leftpercentage integer not null,
	presenceofpavement_right_m numeric(6,2) not null,
	presenceofpavement_rightpercentage integer not null,
	presenceofpavement_minimumwidth_m numeric(6,2) not null,
	presenceofpavement_averagewidth_m numeric(6,2) not null,
	presenceofpavement_evidencedate date,
	presenceofpavement_updatedate date not null,
	presenceofpavement_source varchar(85),
	presenceofpavement_capturemethod varchar(25) not null,
	presenceoftram_extentoflink varchar(15),
	presenceoftram_linkdirection varchar(21),
	presenceoftram_updatedate date,
	presenceoftram_source varchar(85),
	presenceofstreetlight_coverage varchar(15) not null,
	presenceofstreetlight_evidencedate date not null,
	presenceofstreetlight_updatedate date not null,
	presenceofstreetlight_capturemethod varchar(25) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadlink_rdtrkpthref (
	roadtrackorpathid uuid not null,
	roadlinkid uuid not null,
	roadlinkversiondate date,
	PRIMARY KEY (roadtrackorpathid,roadlinkid,roadlinkversiondate)
);
