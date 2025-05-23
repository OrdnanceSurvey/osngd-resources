/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_ntwk_waterlink (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineStringZ, 7405) not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source varchar(50),
	theme varchar(40) not null,
	description varchar(12) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source varchar(50),
	primacy varchar(1) not null,
	watertype varchar(6) not null,
	physicallevel varchar(15) not null,
	physicalcontainment varchar(31) not null,
	flowdirection varchar(12) not null,
	permanence varchar(12) not null,
	capturespecification varchar(10),
	levelofdetail varchar(8),
	catchmentname varchar(254),
	catchmentid varchar(20),
	width numeric(7,2),
	gradient numeric(5,2),
/*
 *	There is currently a known issue affecting the `startnode` and `endnode`
 *	attributes where missing data is supplied as the text string 'MissingXRef'.
 *	This means that the attributes must be set to `varchar` (not `uuid`).
 *	For details see Current Known Data Issues page for the latest update:
 *	https://docs.os.uk/osngd/using-os-ngd-data/current-known-data-issues
*/
	-- startnode uuid not null,
	-- endnode uuid not null,
	startnode varchar(36) not null,
	endnode varchar(36) not null,
	nameid uuid,
	name1_text varchar(254),
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	namesecondaryid uuid,
	namesecondary1_text varchar(254),
	namesecondary1_language varchar(3),
	namesecondary2_text varchar(254),
	namesecondary2_language varchar(3),
	nametertiaryid uuid,
	nametertiary1_text varchar(254),
	nametertiary1_language varchar(3),
	nametertiary2_text varchar(254),
	nametertiary2_language varchar(3),
	PRIMARY KEY (osid)
);
