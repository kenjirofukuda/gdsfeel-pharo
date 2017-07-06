debugging-use-only
nodeOfStructureNamed: aStructureName
	| lib |
	lib := GdsStation default library.
	^ self nodes detect: [ :node | (node item isKindOf: GdsStructure) and: [node item library == lib and: [ node name sameAs: aStructureName] ]] ifNone: [  ]