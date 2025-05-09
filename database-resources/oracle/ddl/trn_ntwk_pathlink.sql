/* This DDL is based on data schema version 2.0 */
CREATE TABLE TRN_NTWK_PATHLINK (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH_M NUMERIC(15,3) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(42) not null,
	PATHNAME1_TEXT VARCHAR2(254),
	PATHNAME1_LANGUAGE VARCHAR2(3),
	PATHNAME2_TEXT VARCHAR2(254),
	PATHNAME2_LANGUAGE VARCHAR2(3),
	ALTERNATENAME1_TEXT VARCHAR2(254),
	ALTERNATENAME1_LANGUAGE VARCHAR2(3),
	ALTERNATENAME2_TEXT VARCHAR2(254),
	ALTERNATENAME2_LANGUAGE VARCHAR2(3),
	SURFACETYPE VARCHAR2(13),
	CYCLEFACILITY VARCHAR2(50),
	CYCLEFACILITY_WHOLELINK NUMBER(1),
	ELEVATIONGAIN_INDIRECTION NUMERIC(6,1) not null,
	ELEVATIONGAIN_AGAINSTDIRECTION NUMERIC(6,1) not null,
	HEIGHTINGMETHOD VARCHAR2(19) not null,
	CAPTURESPECIFICATION VARCHAR2(10) not null,
	MATCHSTATUS VARCHAR2(39) not null,
	STARTNODE VARCHAR2(36) not null,
	STARTGRADESEPARATION NUMBER(2) not null,
	ENDNODE VARCHAR2(36) not null,
	ENDGRADESEPARATION NUMBER(2) not null,
	PRESENCEOFSTREETLIGHT_COVERAGE VARCHAR2(15) not null,
	PRESENCEOFSTREETLIGHT_EVIDENCEDATE DATE not null,
	PRESENCEOFSTREETLIGHT_UPDATEDATE DATE not null,
	PRESENCEOFSTREETLIGHT_CAPTUREMETHOD VARCHAR2(25) not null,
	PRIMARY KEY (osid)
);
