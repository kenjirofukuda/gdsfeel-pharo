drawing
colorForElement: aGdsElement
	(#(inItem inId) includes: aGdsElement state) 
		ifTrue: [^ self visiblePickingColor].
	^ super colorForElement: aGdsElement

		