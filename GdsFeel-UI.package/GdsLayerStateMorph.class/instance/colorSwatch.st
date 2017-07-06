as yet unclassified
colorSwatch
	^ (  
	 self theme 
		newColorChooserIn: self
		for: self
		getColor: #colorValue
		setColor: #colorValue:
		getEnabled: nil 
		help: 'click here to change the color' translated) 
			minWidth: 16; width: 16;
			minHeight: 16; height: 16; yourself