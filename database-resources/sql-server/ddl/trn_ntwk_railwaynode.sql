/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_railwaynode (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(25) not null,
	PRIMARY KEY (osid)
);
