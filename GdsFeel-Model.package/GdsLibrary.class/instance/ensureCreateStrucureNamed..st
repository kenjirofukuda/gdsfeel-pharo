structure control
ensureCreateStrucureNamed: aStructureName
	^ (self structureNamed: aStructureName)
		ifNotNil: [ :foundStructure | foundStructure ]
		ifNil: [ | newStructure |
			newStructure := self elementClass
				fromLibrary: self
				structureNamed: aStructureName.
			self addStructure: newStructure.
			newStructure ]