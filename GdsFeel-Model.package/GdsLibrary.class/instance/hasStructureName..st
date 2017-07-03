testing
hasStructureName: aStructureName
	^ (self structures select: [ :s | s name sameAs: aStructureName ])
		isNotEmpty