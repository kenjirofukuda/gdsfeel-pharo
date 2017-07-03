private
extractedStructureNames
	self extracted
		ifFalse: [ ^self error: 'invalid call: library not extracted' ].
	^self extractDirectory directories 
		collect: [:dirRef | dirRef basenameWithoutExtension ]. 