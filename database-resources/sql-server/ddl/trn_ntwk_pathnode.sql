/* This DDL is based on data schema version 1.1 */
CREATE TABLE trn_ntwk_pathnode (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	theme nvarchar(40) not null,
	description nvarchar(9) not null,
	formofroadnode nvarchar(21) not null,
	classification nvarchar(21),
	PRIMARY KEY (osid)
);
