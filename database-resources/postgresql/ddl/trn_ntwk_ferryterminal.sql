/* This DDL is based on data schema version 1.1 */
CREATE TABLE trn_ntwk_ferryterminal (
	osid uuid not null,
	toid varchar(20),
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Point, 27700) not null,
	theme varchar(40) not null,
	description varchar(14) not null,
	name1_text varchar(254),
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	ferryterminalcode varchar(10),
	roadnodeid uuid,
	pathnodeid uuid,
	ferrynodeid uuid not null,
	siteid uuid,
	PRIMARY KEY (osid)
);
