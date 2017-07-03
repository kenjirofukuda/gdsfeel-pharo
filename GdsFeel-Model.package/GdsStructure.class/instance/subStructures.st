accessing - analisys
subStructures
	^ (self directReferenceElements collect: [ :e | e refStructure ]) asSet asArray