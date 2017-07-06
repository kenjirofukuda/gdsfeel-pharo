drawing
fullDrawOn: aCanvas
	<todo: 're activate fillOutlineOn:'>
	element isReference
		ifFalse: [morph insideViewLevels ifFalse: [^self]]. 
	element state = #inStructure 
		ifTrue: [ 
			self canFill
				ifTrue: [
					"self fillOutlineOn: aCanvas"] ].
	self strokeOutlineOn: aCanvas.
	self optionalDrawOn: aCanvas