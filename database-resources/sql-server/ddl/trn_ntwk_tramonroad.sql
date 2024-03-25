/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_tramonroad (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length_m numeric(15,3) not null,
	theme nvarchar(40) not null,
	description nvarchar(12) not null,
	roadlinkid uniqueidentifier not null,
	PRIMARY KEY (osid)
);
