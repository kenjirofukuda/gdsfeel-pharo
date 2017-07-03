objects from disk
closeSaving: aBoolean
	| announcement |
	aBoolean ifTrue: [self save].
	self privateClose.
	announcement := (GdsStructureClosed new) 
		structure: self;
		library: self library;
		yourself.
	self announcer announce: announcement.
	self library announcer announce: announcement.	
	GdsStation default announcer announce: announcement.