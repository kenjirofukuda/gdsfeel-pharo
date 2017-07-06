private
privateStrokeOutlineOn: aCanvas color: aColor
	morph 
		drawLocalIgnoreItemOn: aCanvas 
		elements: self visibleElements 
		drawBlock: [ :canvas :el | 
			morph 
				strokeOn: aCanvas
				element: el 
				color: aColor].	