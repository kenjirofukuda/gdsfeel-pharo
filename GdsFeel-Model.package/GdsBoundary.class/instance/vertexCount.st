accessing
vertexCount
	((self vertices size >= 3) and:
	[self vertices first = self vertices last])
		ifTrue: [^self vertices size - 1].
	^super vertexCount