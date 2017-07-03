accessing
pathtype: aInteger
	self assert: [aInteger isInteger].
	pathtype = aInteger ifTrue: [^self].
	pathtype := aInteger.
	self removeGeometryCache.
	self changed: #pathtype.