accessing
displayBounds
	displayBounds ifNil: [displayBounds := Display boundingBox].
	^displayBounds
	