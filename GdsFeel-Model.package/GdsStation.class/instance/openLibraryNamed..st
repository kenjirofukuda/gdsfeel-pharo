action
openLibraryNamed: aLibName
	| lib |
	lib := self fileMap at: (GdsLibrary storageFileDbNamed: aLibName) ifAbsent: [nil].
	self assert: lib notNil.
	self openLibrary: lib.