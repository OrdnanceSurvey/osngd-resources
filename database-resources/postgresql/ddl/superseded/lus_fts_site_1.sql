/* This DDL is based on data schema version 1.0 */
CREATE TABLE lus_fts_site (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(MultiPolygon, 27700) not null,
	geometry_area numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	oslandusetiera varchar(50) not null,
	oslandusetierb varchar(166),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_source varchar(50),
	stakeholder varchar(99),
	name1_text varchar(254),
	name1_language varchar(3),
	name1_evidencedate date,
	name1_updatedate date,
	name1_source varchar(50),
	name2_text varchar(254),
	name2_language varchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source varchar(50),
	primaryuprn bigint,
	extentdefinition varchar(30) not null,
	PRIMARY KEY (osid)
);
