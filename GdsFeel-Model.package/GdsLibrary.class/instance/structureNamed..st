structure control
structureNamed: aString	
	^ self nameToStructureMap at: aString ifAbsent: [ nil ]