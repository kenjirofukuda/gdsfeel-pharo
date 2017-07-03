accessing
width: aFloat
	width = aFloat ifTrue: [^self].
	width := aFloat.
	self removeGeometryCache.
	self changed: #width.	