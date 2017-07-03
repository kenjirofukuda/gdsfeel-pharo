initialization
fromItemContext: aGdsItemContext atIndex: aVerticesIndex
	| location |
	self assert: aGdsItemContext structureName isNotEmpty.
	location := aGdsItemContext vertices at: aVerticesIndex.
	self xy: location.
	self angle: aGdsItemContext angle.
	self mag: aGdsItemContext mag.
	self setReflected: aGdsItemContext isReflected.
	self statusNumber: aGdsItemContext number