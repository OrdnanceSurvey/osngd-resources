/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_railwaylinkset (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length_m numeric(15,3) not null,
	theme nvarchar(40) not null,
	description nvarchar(20) not null,
	name1_text nvarchar(254) not null,
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	name3_text nvarchar(254),
	name3_language nvarchar(3),
	name4_text nvarchar(254),
	name4_language nvarchar(3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_railwaylinkset_ralinkref (
	railwaylinkid uniqueidentifier,
	railwaylinksetid uniqueidentifier,
	railwaylinksetversiondate date,
	PRIMARY KEY (railwaylinkid,railwaylinksetid,railwaylinksetversiondate)
);
