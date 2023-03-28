/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_ntwk_waternode (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(8) not null,
	PRIMARY KEY (osid)
);
