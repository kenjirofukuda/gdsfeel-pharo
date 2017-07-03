accessing - analisys
indirectReferencedStructures
	| refs set |
	set := Set new.
	refs := self referencedStructures.
	set addAll: refs.
	[refs isEmpty]
		whileFalse: [
			refs 
				do: [:each |
					refs := each indirectReferencedStructures.
					set addAll: refs]].
	^set asArray.
		
	 