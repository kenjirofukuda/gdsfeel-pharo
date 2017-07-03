initialization
fromItemContext: aGdsItemContext 
	vertices := nil.
	self vertices: 
		(self 
			validateVertices: aGdsItemContext vertices
			editorContext: aGdsItemContext).
	self ownColor: aGdsItemContext ownColor.
	self statusNumber: aGdsItemContext number 