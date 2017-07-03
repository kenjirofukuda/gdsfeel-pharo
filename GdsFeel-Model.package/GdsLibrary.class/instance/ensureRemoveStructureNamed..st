structure control
ensureRemoveStructureNamed: aStructureName
	(self structureNamed: aStructureName)
		ifNotNil: [ :foundStructure  | self removeStructure: foundStructure ]