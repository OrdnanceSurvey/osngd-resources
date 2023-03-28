/* This DDL is based on data schema version 1.0 */
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
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadnode_rdtrkpthref (
	roadtrackorpathid uniqueidentifier,
	roadnodeid uniqueidentifier,
	roadnodeversiondate date,
	PRIMARY KEY (roadtrackorpathid,roadnodeid,roadnodeversiondate)
);
