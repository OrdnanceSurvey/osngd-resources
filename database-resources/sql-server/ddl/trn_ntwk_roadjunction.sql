/* This DDL is based on data schema version 1.0 */
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
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadjunction_rdnoderef (
	roadnodeid uniqueidentifier,
	roadjunctionid uniqueidentifier,
	roadjunctionversiondate date,
	PRIMARY KEY (roadnodeid,roadjunctionid,roadjunctionversiondate)
);
