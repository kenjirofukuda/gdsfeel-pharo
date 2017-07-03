as yet unclassified
specRecords
	^ Array streamContents: [ :s |
		s nextPutAll: self specRecords1.
		(Smalltalk hasClassNamed: 'GdsAcPoint')
			ifTrue: [ s nextPut: {'PT' .  'POINT' . true}  ] .
		s nextPutAll: self specRecords2 ]
