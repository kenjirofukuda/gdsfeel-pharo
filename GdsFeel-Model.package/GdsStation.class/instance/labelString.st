accessing
labelString
	^String streamContents: [:s |
		s nextPutAll: 'GdsFeel: '.
		self library 
			ifNotNil: [self library dirty ifTrue: [s nextPutAll: '* ']].
		s nextPutAll: self labelStringAfter].
