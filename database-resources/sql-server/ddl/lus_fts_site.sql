/* This DDL is based on data schema version 2.0 */
CREATE TABLE lus_fts_site (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_capturemethod nvarchar(25) not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_capturemethod nvarchar(25) not null,
	oslandusetiera nvarchar(50) not null,
	oslandusetierb nvarchar(166),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_capturemethod nvarchar(25) not null,
	stakeholder nvarchar(150),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name1_evidencedate date,
	name1_updatedate date,
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	extentdefinition nvarchar(30) not null,
	matcheduprn bigint,
	matcheduprn_method nvarchar(40),
	address_classificationcode nvarchar(2),
	address_primarydescription nvarchar(120),
	address_secondarydescription nvarchar(120),
	address_classificationcorrelation nvarchar(15),
	address_classificationsource nvarchar(20),
	addresscount_total integer not null,
	addresscount_residential integer not null,
	addresscount_commercial integer not null,
	addresscount_other integer not null,
	nlud_code nvarchar(4),
	nlud_orderdescription nvarchar(30),
	nlud_groupdescription nvarchar(40),
	mainbuildingid uniqueidentifier,
	status nvarchar(20),
	status_updatedate date,
	PRIMARY KEY (osid)
);
CREATE TABLE lus_fts_site_siteaddressref (
	uprn bigint not null,
	siteid uniqueidentifier not null,
	siteversiondate date not null,
	relationshiptype nvarchar(30) not null,
	PRIMARY KEY (uprn,siteid,siteversiondate,relationshiptype)
);
