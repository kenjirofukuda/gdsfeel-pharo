testing
isValidLibraryName: aString 
	^ (self isValidStorageName: aString) and: 
	[aString matchesRegex: '[A-Z][A-Z0-9$_]+'].