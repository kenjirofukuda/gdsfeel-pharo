accessing
validateVertices: aPointArray
	| points |
	points := super validateVertices: aPointArray.
	(points first = points last)
		ifFalse: [
			points := aPointArray asOrderedCollection.
			points add: points first].
	^points asArray.