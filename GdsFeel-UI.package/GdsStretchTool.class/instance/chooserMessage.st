prompt message
chooserMessage
	^self vertexStrechSupported 
		ifTrue: ['Point Near Segment or Vertex:']
		ifFalse: ['Point Near Segment:'].