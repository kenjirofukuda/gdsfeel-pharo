accessing
labelString
	^String streamContents: [:s |
		self dirty ifTrue: [s nextPutAll: '* '].
		s nextPutAll: self name].