accessing - analisys
lookupReferencedStructures
	^self library structures 
		select: [:each | each directReferenceElements anySatisfy: [:el | el structureName sameAs: self name] ]
