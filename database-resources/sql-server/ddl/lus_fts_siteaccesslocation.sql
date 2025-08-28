/* This DDL is based on data schema version 2.0 */
CREATE TABLE lus_fts_siteaccesslocation (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_evidencedate date,
	geometry_capturemethod nvarchar(25),
	geometry_updatedate date not null,
	theme nvarchar(40) not null,
	description nvarchar(15) not null,
	access_mode nvarchar(25) not null,
	access_purpose nvarchar(30),
	access_evidencedate date,
	access_updatedate date not null,
	accessedsiteid uniqueidentifier not null,
	accessednetworknodefeaturetype nvarchar(20),
	accessednetworknodeid uniqueidentifier,
	distancetonetworknode_m numeric(5,1),
	PRIMARY KEY (osid)
);
