private
shallowStrokeOutlineOn: aCanvas color: aColor
	morph 
		drawLocalIgnoreItemOn: aCanvas 
		elements: self visibleElements
		drawBlock: [ :canvas :el | 
			el isReference
				ifTrue: [
					morph penColor: aColor during: [
						morph drawOn: aCanvas strokeBounds: el dataBounds]]
				ifFalse: [
					morph 
						strokeOn: aCanvas
						element: el 
						color: aColor]].
				