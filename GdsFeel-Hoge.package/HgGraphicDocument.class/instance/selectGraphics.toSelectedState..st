actions
selectGraphics: aGraphicCollection toSelectedState: aState
	aGraphicCollection do: [ :each | each selected: aState ]