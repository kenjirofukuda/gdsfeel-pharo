private
fromItemContext: aGdsItemContext atIndex: aVerticesIndex
	super fromItemContext:  aGdsItemContext atIndex: aVerticesIndex.
	self columnCount: aGdsItemContext ashape columnCount.
	self rowCount: aGdsItemContext ashape rowCount.
	self xStep: aGdsItemContext ashape xStep.
	self yStep: aGdsItemContext ashape yStep.	
	