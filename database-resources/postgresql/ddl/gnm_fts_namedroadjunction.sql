/* This DDL is based on data schema version 1.0 */
CREATE TABLE gnm_fts_namedroadjunction (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPoint, 27700) not null,
	theme varchar(40) not null,
	description varchar(30) not null,
	name1_text varchar(254),
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	roadclassificationnumber varchar(10),
	junctionnumber varchar(10),
	intersectingroads1_text varchar(400),
	intersectingroads1_language varchar(3),
	intersectingroads2_text varchar(400),
	intersectingroads2_language varchar(3),
	PRIMARY KEY (osid)
);
