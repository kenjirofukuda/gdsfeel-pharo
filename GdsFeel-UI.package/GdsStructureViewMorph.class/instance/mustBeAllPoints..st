private
mustBeAllPoints: aPointCollection
	"Why large positive integer included."
	(aPointCollection allSatisfy: [:each | each isMemberOf: Point ])
		ifFalse: [ 
			thisContext crTrace. 
			^aPointCollection select: [:each | each isMemberOf: Point ]].
	^aPointCollection.