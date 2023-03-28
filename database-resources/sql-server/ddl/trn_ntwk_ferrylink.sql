/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_ferrylink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(10) not null,
	fictitious BIT,
	vehicularferry BIT not null,
	routeoperator nvarchar(250),
	startnode uniqueidentifier not null,
	endnode uniqueidentifier not null,
	PRIMARY KEY (osid)
);
