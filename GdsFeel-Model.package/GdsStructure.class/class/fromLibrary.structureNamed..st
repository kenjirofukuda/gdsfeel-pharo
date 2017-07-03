instance creation
fromLibrary: aGdsLibrary structureNamed: aString
	^(self basicNew initialize)
		library: aGdsLibrary;
		name: aString;
		yourself.