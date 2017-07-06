private
privateFillOutlineOn: aCanvas
	morph 
		drawLocalIgnoreItemOn: aCanvas 
		elements: self visibleElements 
		drawBlock: [ :canvas :el | 
			morph 
				drawOn: aCanvas
				element: el].