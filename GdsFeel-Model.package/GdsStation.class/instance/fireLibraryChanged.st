updating
fireLibraryChanged
	self announcer announce: #libraryChanged.
	GdsFeel dependentEnabled
		ifFalse: [ ^ self ].
	self notifyStructureChanged.
	self notifyLibraryChanged