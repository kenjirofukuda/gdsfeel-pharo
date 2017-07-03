command
put
	self colVertices ifEmpty: [ self error: 'empty vertices' ].
	self elementClass ifNil: [ self error: 'element type not set' ].
	(self elementClass isReference)
		ifTrue: [ self putReference]
		ifFalse: [ self putPrimitive].