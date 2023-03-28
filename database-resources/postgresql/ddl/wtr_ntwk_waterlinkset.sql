/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_ntwk_waterlinkset (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiLineString, 27700) not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(29) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	name1_text varchar(254) not null,
	name1_language varchar(3),
	name1_evidencedate date,
	name1_updatedate date not null,
	name1_source varchar(50),
	name2_text varchar(254),
	name2_language varchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source varchar(50),
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_ntwk_waterlinkset_wtrlinkref (
	waterlinkid uuid,
	waterlinksetid uuid,
	waterlinksetversiondate date,
	PRIMARY KEY (waterlinkid,waterlinksetid,waterlinksetversiondate)
);
