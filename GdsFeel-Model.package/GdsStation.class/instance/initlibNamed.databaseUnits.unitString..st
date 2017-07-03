instance creation
initlibNamed: name databaseUnits: dbu unitString: unit
	| lib |
	lib := GdsLibrary initializeName: name databaseUnits: dbu unitString: unit.
	lib ifNotNil: [self changed: #openlibEnabled].
	^lib