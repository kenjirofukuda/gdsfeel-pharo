accessing - analisys
referenceEnabledStructureNames
	| ignoreNames |
	ignoreNames := self indirectReferencedStructureNames.
	^ self  library structureNames 
		reject: [ :each | (each sameAs: self  name) or: [ignoreNames includes: each]]