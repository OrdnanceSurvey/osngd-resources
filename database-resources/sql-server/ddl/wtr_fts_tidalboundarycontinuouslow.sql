/* This DDL is based on data schema version 1.0 */
CREATE TABLE wtr_fts_tidalboundarycontinuouslow (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length_m numeric(15,3) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	theme nvarchar(40) not null,
	description nvarchar(25) not null,
	description_evidencedate date,
	description_updatedate date not null,
	iscoincidentwithhigh BIT not null,
	PRIMARY KEY (osid)
);
