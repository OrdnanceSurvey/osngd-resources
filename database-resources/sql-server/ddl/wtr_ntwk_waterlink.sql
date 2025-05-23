/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_ntwk_waterlink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
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
	description nvarchar(12) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	primacy nvarchar(1) not null,
	watertype nvarchar(6) not null,
	physicallevel nvarchar(15) not null,
	physicalcontainment nvarchar(31) not null,
	flowdirection nvarchar(12) not null,
	permanence nvarchar(12) not null,
	capturespecification nvarchar(10),
	levelofdetail nvarchar(8),
	catchmentname nvarchar(254),
	catchmentid nvarchar(20),
	width numeric(7,2),
	gradient numeric(5,2),
/*
 *	There is currently a known issue affecting the `startnode` and `endnode`
 *	attributes where missing data is supplied as the text string 'MissingXRef'.
 *	This means that the attributes must be set to `nvarchar` (not `uniqueidentifier`).
 *	For details see Current Known Data Issues page for the latest update:
 *	https://docs.os.uk/osngd/using-os-ngd-data/current-known-data-issues
*/
	-- startnode uniqueidentifier not null,
	-- endnode uniqueidentifier not null,
	startnode nvarchar(36) not null,
	endnode nvarchar(36) not null,
	nameid uniqueidentifier,
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	namesecondaryid uniqueidentifier,
	namesecondary1_text nvarchar(254),
	namesecondary1_language nvarchar(3),
	namesecondary2_text nvarchar(254),
	namesecondary2_language nvarchar(3),
	nametertiaryid uniqueidentifier,
	nametertiary1_text nvarchar(254),
	nametertiary1_language nvarchar(3),
	nametertiary2_text nvarchar(254),
	nametertiary2_language nvarchar(3),
	PRIMARY KEY (osid)
);
