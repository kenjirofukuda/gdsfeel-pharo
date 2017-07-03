accessing
statusBar
	^ statusBar ifNil: [ statusBar := StringMorph new asSpecAdapter  ]