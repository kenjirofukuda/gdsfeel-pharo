action
openLibraryNamed: aLibName during: aLibraryBlock
	[self openLibraryNamed: aLibName.
	aLibraryBlock cull: self library.] 
	ensure: [ self closeLibrary ]	