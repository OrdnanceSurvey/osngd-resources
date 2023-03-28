/* This DDL is based on data schema version 1.0 */
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
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_road_rdlinkref (
	roadlinkid uniqueidentifier,
	roadid uniqueidentifier,
	roadversiondate date,
	PRIMARY KEY (roadlinkid,roadid,roadversiondate)
);
