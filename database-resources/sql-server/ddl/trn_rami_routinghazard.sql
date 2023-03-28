/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_routinghazard (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(12) not null,
	hazarddescription nvarchar(50),
	atpositionxcoordinate numeric(10,3),
	atpositionycoordinate numeric(10,3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_routinghazard_routhazntwkref (
	networkreferenceid uniqueidentifier,
	networkfeaturetype nvarchar(9),
	routinghazardid uniqueidentifier,
	routinghazardversiondate date,
	PRIMARY KEY (networkreferenceid,routinghazardid,routinghazardversiondate)
);
