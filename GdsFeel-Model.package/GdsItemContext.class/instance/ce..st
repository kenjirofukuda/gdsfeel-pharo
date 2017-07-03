command-points
ce: aPoint
	| absPoint |
	aPoint class = Point
		ifFalse: [ self error: 'ce: require Point instance.' ].
	offset ifNil: [ offset := 0 @ 0 ].
	absPoint := offset + aPoint.
	self colVertices isEmpty
		ifFalse: [ 
			self colVertices last = absPoint
				ifTrue: [ ^ self ] ].
	self colVertices add: absPoint.
	self changedPutGetDependent