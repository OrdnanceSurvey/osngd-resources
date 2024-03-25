/* This DDL is based on data schema version 1.0 */
CREATE TABLE gnm_fts_namedroadjunction (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(30) not null,
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	roadclassificationnumber nvarchar(10),
	junctionnumber nvarchar(10),
	intersectingroads1_text nvarchar(400),
	intersectingroads1_language nvarchar(3),
	intersectingroads2_text nvarchar(400),
	intersectingroads2_language nvarchar(3),
	PRIMARY KEY (osid)
);
