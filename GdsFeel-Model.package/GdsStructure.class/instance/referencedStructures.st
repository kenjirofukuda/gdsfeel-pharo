accessing - analisys
referencedStructures
	^ referencedStructures ifNil: [ referencedStructures := self lookupReferencedStructures ]