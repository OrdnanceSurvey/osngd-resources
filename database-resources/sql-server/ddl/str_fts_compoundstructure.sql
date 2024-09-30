/* This DDL is based on data schema version 2.0 */
CREATE TABLE str_fts_compoundstructure (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(85),
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(85),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name1_evidencedate date,
	name1_updatedate date,
	name1_source nvarchar(85),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source nvarchar(85),
	name3_text nvarchar(254),
	name3_language nvarchar(3),
	name3_evidencedate date,
	name3_updatedate date,
	name3_source nvarchar(85),
	name4_text nvarchar(254),
	name4_language nvarchar(3),
	name4_evidencedate date,
	name4_updatedate date,
	name4_source nvarchar(85),
	operationalstatus nvarchar(10) not null,
	capturespecification nvarchar(10) not null,
	networkover nvarchar(10),
	networkunder nvarchar(10),
	PRIMARY KEY (osid)
);
