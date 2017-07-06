drawing
fullDrawOn: aCanvas
	element state = #inStructure
		ifTrue: [ 
			self fillOutlineOn: aCanvas ]
		ifFalse: [
			self strokeOutlineOn: aCanvas].
	self optionalDrawOn: aCanvas.	
