/* This DDL is based on data schema version 1.0 */
CREATE TABLE lus_fts_siteaccesslocation (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(15) not null,
	accesstype nvarchar(30) not null,
	accesstype_evidencedate date,
	accesstype_updatedate date not null,
	accesstype_source nvarchar(50),
	siteid uniqueidentifier not null,
	routingpointid uniqueidentifier,
	roadnodeid uniqueidentifier,
	PRIMARY KEY (osid)
);
