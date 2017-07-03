initialization
name: aLibName databaseUnit: aInteger unitString: aUnitString
	| announcement |
	self privateName: aLibName databaseUnit:  aInteger unitString: aUnitString.
	self autoAllocateLayerColors.
	self saveLayers.
	self makeArchive.
	self deleteWorkFolder.
	announcement := GdsLibraryCreated new library: self; yourself.
	self announcer announce: announcement.
	GdsStation default announcer announce: announcement.