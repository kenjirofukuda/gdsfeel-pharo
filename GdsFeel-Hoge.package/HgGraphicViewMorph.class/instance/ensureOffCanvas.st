drawing
ensureOffCanvas
	^ offCanvas
		ifNil: [ 
			offCanvas := FormCanvas extent: self extent.
			offCanvas
				fillColor: self color;
				yourself ]