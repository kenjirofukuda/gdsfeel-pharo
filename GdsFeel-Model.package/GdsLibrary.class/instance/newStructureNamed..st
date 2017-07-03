structure control
newStructureNamed: aStructureName
	| s |
	(self hasStructureName: aStructureName)
		ifTrue: [self error: 'structure name: ', aStructureName printString, 'already exists'].
	s := self elementClass fromLibrary: self structureNamed: aStructureName.
	self addStructure: s.
	^s.
	