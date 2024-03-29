/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_averageandindicativespeed (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineStringZ, 7405) not null,
	geometry_length_m numeric(15,3) not null,
	theme varchar(40) not null,
	description varchar(30) not null,
	indicativespeedlimit_mph integer not null,
	indicativespeedlimit_kph integer not null,
	indicativespeedlimit_evidencedate date,
	indicativespeedlimit_updatedate date not null,
	indicativespeedlimit_source varchar(85),
	indicativespeedlimit_capturemethod varchar(25) not null,
	averagespeed_mf4to7indirection_kph numeric(4,1),
	averagespeed_mf4to7againstdirection_kph numeric(4,1),
	averagespeed_mf4to7capturemethod varchar(25) not null,
	averagespeed_mf7to9indirection_kph numeric(4,1),
	averagespeed_mf7to9againstdirection_kph numeric(4,1),
	averagespeed_mf7to9capturemethod varchar(25) not null,
	averagespeed_mf9to12indirection_kph numeric(4,1),
	averagespeed_mf9to12againstdirection_kph numeric(4,1),
	averagespeed_mf9to12capturemethod varchar(25) not null,
	averagespeed_mf12to14indirection_kph numeric(4,1),
	averagespeed_mf12to14againstdirection_kph numeric(4,1),
	averagespeed_mf12to14capturemethod varchar(25) not null,
	averagespeed_mf14to16indirection_kph numeric(4,1),
	averagespeed_mf14to16againstdirection_kph numeric(4,1),
	averagespeed_mf14to16capturemethod varchar(25) not null,
	averagespeed_mf16to19indirection_kph numeric(4,1),
	averagespeed_mf16to19againstdirection_kph numeric(4,1),
	averagespeed_mf16to19capturemethod varchar(25) not null,
	averagespeed_mf19to22indirection_kph numeric(4,1),
	averagespeed_mf19to22againstdirection_kph numeric(4,1),
	averagespeed_mf19to22capturemethod varchar(25) not null,
	averagespeed_mf22to4indirection_kph numeric(4,1),
	averagespeed_mf22to4againstdirection_kph numeric(4,1),
	averagespeed_mf22to4capturemethod varchar(25) not null,
	averagespeed_ss4to7indirection_kph numeric(4,1),
	averagespeed_ss4to7againstdirection_kph numeric(4,1),
	averagespeed_ss4to7capturemethod varchar(25) not null,
	averagespeed_ss7to10indirection_kph numeric(4,1),
	averagespeed_ss7to10againstdirection_kph numeric(4,1),
	averagespeed_ss7to10capturemethod varchar(25) not null,
	averagespeed_ss10to14indirection_kph numeric(4,1),
	averagespeed_ss10to14againstdirection_kph numeric(4,1),
	averagespeed_ss10to14capturemethod varchar(25) not null,
	averagespeed_ss14to19indirection_kph numeric(4,1),
	averagespeed_ss14to19againstdirection_kph numeric(4,1),
	averagespeed_ss14to19capturemethod varchar(25) not null,
	averagespeed_ss19to22indirection_kph numeric(4,1),
	averagespeed_ss19to22againstdirection_kph numeric(4,1),
	averagespeed_ss19to22capturemethod varchar(25) not null,
	averagespeed_ss22to4indirection_kph numeric(4,1),
	averagespeed_ss22to4againstdirection_kph numeric(4,1),
	averagespeed_ss22to4capturemethod varchar(25) not null,
	averagespeed_evidencedate date,
	averagespeed_updatedate date not null,
	averagespeed_source varchar(85),
	routehierarchy varchar(32) not null,
	roadclassificationnumber varchar(10),
	name1_text varchar(254),
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	alternatename1_text varchar(254),
	alternatename1_language varchar(3),
	alternatename2_text varchar(254),
	alternatename2_language varchar(3),
	formspartofstreet varchar,
	PRIMARY KEY (osid)
);
