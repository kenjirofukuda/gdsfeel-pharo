private
lookupStructureNames
	^self extracted
		ifTrue: [ self extractedStructureNames ]
		ifFalse: [ self zipStructureNames ]. 