accessing-points
lineSegments
	^Array streamContents: [ :s |
		self lineSegmentsDo: [:seg |
			s nextPut: seg]]
