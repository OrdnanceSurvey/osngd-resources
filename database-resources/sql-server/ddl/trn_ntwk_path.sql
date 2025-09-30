/* This DDL is based on data schema version 1.1 */
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
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_path_pathlinkref (
	pathlinkid uniqueidentifier,
	pathid uniqueidentifier,
	pathversiondate date,
	PRIMARY KEY (pathlinkid,pathid,pathversiondate)
);
