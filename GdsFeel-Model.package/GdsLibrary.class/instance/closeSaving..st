objects from disk
closeSaving: aBoolean
	| announcement |
	self isOpen
		ifTrue: [ 
			aBoolean
				ifTrue: [
					self save].
			self deleteWorkFolder ].
	self initializeCache.
	announcement := (GdsLibraryClosed new) library: self; yourself.
	self announcer announce: announcement.
	GdsStation default announcer announce: announcement.
	
