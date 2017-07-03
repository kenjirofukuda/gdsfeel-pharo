instance creation
ensureCreateLibraryNamed: name 
	| newName |
	newName := name trimBoth.
	newName := GdsCompatibility default coerceStructureName: newName.
	(self nameMap includesKey: newName)
		ifTrue: [ ^ self nameMap at: newName] .	
	^ self initlibNamed: newName databaseUnits: 1000 unitString: 'M' 
