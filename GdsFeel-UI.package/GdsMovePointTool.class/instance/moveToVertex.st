action
moveToVertex
	moveToPoint := self snapedWorldPoint2.
	self currentItem 
		verticesAt: replaceVertexIndex  
		put: moveToPoint copy 
		fixClosed: (self currentItem isBoundary).

	