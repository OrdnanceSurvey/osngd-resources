/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_reinstatementarea (
	osid uuid not null,
	authorityid varchar(17) not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	geometry geometry(MultiPolygon, 27700) not null,
	geometry_area numeric(15,6) not null,
	theme varchar(40) not null,
	description varchar(20) not null,
	reinstatementtype varchar(60) not null,
	locationdescription varchar(250),
	partialreference boolean not null,
	usrn integer not null,
	PRIMARY KEY (osid)
);
