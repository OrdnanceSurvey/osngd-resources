/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_ntwk_waterlinkset (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(29) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	name1_text nvarchar(254) not null,
	name1_language nvarchar(3),
	name1_evidencedate date,
	name1_updatedate date not null,
	name1_source nvarchar(50),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source nvarchar(50),
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_ntwk_waterlinkset_wtrlinkref (
	waterlinkid uniqueidentifier,
	waterlinksetid uniqueidentifier,
	waterlinksetversiondate date,
	PRIMARY KEY (waterlinkid,waterlinksetid,waterlinksetversiondate)
);
