/* This DDL is based on data schema version 1.0 */
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
	PRIMARY KEY (osid)
);
