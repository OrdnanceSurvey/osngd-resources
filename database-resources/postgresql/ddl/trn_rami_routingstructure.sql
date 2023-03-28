/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_routingstructure (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiLineString, 27700) not null,
	geometry_length numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(40) not null,
	structuredescription varchar(50),
	atpositionxcoordinate numeric(10,3),
	atpositionycoordinate numeric(10,3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_routingstructure_routstructntwkref (
	networkreferenceid uuid,
	networkfeaturetype varchar(9),
	routingstructureid uuid,
	routingstructureversiondate date,
	PRIMARY KEY (networkreferenceid,routingstructureid,routingstructureversiondate)
);
