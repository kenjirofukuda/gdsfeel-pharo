initialization
initializeWidgets
	| swatch |
	super initializeWidgets.
	layerNumberModel := self newLabel.
	colorChooserMorph := BorderedMorph new 
	"	borderWidth: 1;
		borderColor: Color red;"
		changeTableLayout;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		clipSubmorphs: true;
		"color: Color blue ;"
		yourself .
	swatch := (colorChooserMorph theme 
		newColorChooserIn: colorChooserMorph
		for: self
		getColor: #color
		setColor: #color:
		getEnabled: nil 
		help: 'click here to change the color' translated) 
			minWidth: 16; width: 16;
			minHeight: 16; height: 16; yourself.
	colorChooserMorph addMorphCentered: swatch .