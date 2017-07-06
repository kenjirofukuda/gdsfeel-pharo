accessing
refStructure
	^ element refStructure
	"refStructure ifNil: [
		element ifNotNil: [
			refStructure := morph model library 
				structureNamed: element structureName.]].	
	^refStructure"