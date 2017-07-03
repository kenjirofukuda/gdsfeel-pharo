accessing - analisys
topStructures
	^ self structures select: [ :s | 
		s isLeaf not 
			and: [s indirectReferencedStructureNames  isEmpty ]].