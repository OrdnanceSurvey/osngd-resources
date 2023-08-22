/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_pavementlink (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length_m numeric(15,3) not null,
	theme nvarchar(40) not null,
	description nvarchar(10) not null,
	routehierarchy nvarchar(32) not null,
	roadclassificationnumber nvarchar(10),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	alternatename1_text nvarchar(254),
	alternatename1_language nvarchar(3),
	alternatename2_text nvarchar(254),
	alternatename2_language nvarchar(3),
	capturespecification nvarchar(10) not null,
	presenceofpavement_sideofroad nvarchar(5) not null,
	presenceofpavement_minimumwidth_m numeric(6,2) not null,
	presenceofpavement_averagewidth_m numeric(6,2) not null,
	presenceofpavement_evidencedate date,
	presenceofpavement_updatedate date not null,
	presenceofpavement_source nvarchar(85),
	presenceofpavement_capturemethod nvarchar(25) not null,
	roadlinkid uniqueidentifier not null,
	PRIMARY KEY (osid)
);