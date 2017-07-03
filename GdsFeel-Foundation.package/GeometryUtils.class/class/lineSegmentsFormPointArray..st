as yet unclassified
lineSegmentsFormPointArray: aPointArray
	^ Array streamContents: [ :s |
		self pointArray: aPointArray lineSegmentsDo: [ :seg |
			s nextPut: seg]. ]
