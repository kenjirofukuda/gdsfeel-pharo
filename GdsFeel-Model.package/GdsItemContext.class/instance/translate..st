command-points
translate: aPoint
	| col |
	aPoint class = Point
		ifFalse: [self error: 'ce: require Point instance.'].
	(self colVertices size <= 0)
		ifTrue: [self error: 'empty vertices'.].
	col := colVertices copy.
	col doWithIndex: [ :p :i |
		colVertices at: i put: p + aPoint.].
	self changed: #geometry.