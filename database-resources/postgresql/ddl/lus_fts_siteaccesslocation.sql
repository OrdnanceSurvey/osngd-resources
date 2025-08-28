/* This DDL is based on data schema version 2.0 */
CREATE TABLE lus_fts_siteaccesslocation (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	geometry_evidencedate date,
	geometry_capturemethod varchar(25),
	geometry_updatedate date not null,
	theme varchar(40) not null,
	description varchar(15) not null,
	access_mode varchar(25) not null,
	access_purpose varchar(30),
	access_evidencedate date,
	access_updatedate date not null,
	accessedsiteid uuid not null,
	accessednetworknodefeaturetype varchar(20),
	accessednetworknodeid uuid,
	distancetonetworknode_m numeric(5,1),
	PRIMARY KEY (osid)
);
