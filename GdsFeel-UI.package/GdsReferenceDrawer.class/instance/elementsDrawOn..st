drawing
elementsDrawOn: aCanvas
	self pushedPort: 
		[ self visibleElements do: 
			[ :each | 
			morph 
				drawOn: aCanvas
				element: each ] ]