accessing
statusSymbolOf: statusNumber
	(self inTrushStausNumber = statusNumber) ifTrue: [^#inTrush].
	(self inIdStausNumber  = statusNumber) ifTrue: [^#inId].
	(self inDatabaseStausNumber = statusNumber) ifTrue: [^#inStructure].
	(GdsCompatibility default itemNumberRange includes: statusNumber)
		ifTrue: [^#inItem].
	^#error.	