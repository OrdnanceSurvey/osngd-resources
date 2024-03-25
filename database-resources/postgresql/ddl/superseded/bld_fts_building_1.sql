/* This DDL is based on data schema version 1.0 */
CREATE TABLE bld_fts_building (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Polygon, 27700) not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_updatedate date not null,
	theme varchar(40) not null,
	buildingpartcount integer not null,
	isinsite boolean,
	primarysite_id uuid,
	containingsitecount integer not null,
	ismainbuilding boolean,
	mainbuilding_id uuid,
	mainbuilding_updatedate date,
	buildinguse varchar(100),
	oslandusetiera varchar(50),
	addresscount_total integer not null,
	addresscount_residential integer not null,
	addresscount_commercial integer not null,
	addresscount_other integer not null,
	buildinguse_updatedate date,
	connectivity varchar(15) not null,
	connectivitycount integer not null,
	connectivity_updatedate date,
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_building_bldtostecrossref (
	siteid uuid,
	buildingid uuid,
	buildingversiondate date,
	PRIMARY KEY (siteid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtobldprtcrossref (
	buildingpartid uuid,
	buildingid uuid,
	buildingversiondate date,
	PRIMARY KEY (buildingpartid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtoaddrcrossref (
	uprn bigint,
	buildingid uuid,
	buildingversiondate date,
	PRIMARY KEY (uprn,buildingid,buildingversiondate)
);
