action - tree
addStructure
	| strucName ok default |
	strucName := nil.
	self station 
		newStructureNamed:  [
		ok := false.
		default := ''.
		[ok] 
			whileFalse: [
				strucName := UIManager default request: 'Enter structure:' initialAnswer: default . 
				strucName ifNil: [^self].
				strucName := GdsCompatibility default coerceStructureName: strucName.
				strucName = '' 
					ifTrue: [
						strucName := nil.
						ok := true.]
					ifFalse: [
						(self station library hasStructureName: strucName)
							ifTrue: [default := strucName]
							ifFalse: [ok := true]].].
		strucName]
	withActivate: false.
	tree updateTree.
