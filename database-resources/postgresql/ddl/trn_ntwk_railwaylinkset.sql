/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_railwaylinkset (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiLineString, 27700) not null,
	geometry_length_m numeric(15,3) not null,
	theme varchar(40) not null,
	description varchar(20) not null,
	name1_text varchar(254) not null,
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	name3_text varchar(254),
	name3_language varchar(3),
	name4_text varchar(254),
	name4_language varchar(3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_railwaylinkset_ralinkref (
	railwaylinkid uuid,
	railwaylinksetid uuid,
	railwaylinksetversiondate date,
	PRIMARY KEY (railwaylinkid,railwaylinksetid,railwaylinksetversiondate)
);
