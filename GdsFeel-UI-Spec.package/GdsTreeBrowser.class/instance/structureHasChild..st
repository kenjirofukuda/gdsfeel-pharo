testing
structureHasChild: aGdsStructure
	^ (aGdsStructure isKindOf: GdsStructure) and: [ aGdsStructure subStructures notEmpty ]