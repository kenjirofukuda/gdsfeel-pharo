drawing
strokeEachColorOutlineOn: aCanvas
	self refStructure ifNil: [^self].
	self pushedPort: 
		[ self privateStrokeOutlineOn: aCanvas color: nil ]	