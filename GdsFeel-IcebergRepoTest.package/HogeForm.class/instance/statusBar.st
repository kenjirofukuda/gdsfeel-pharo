accessing
statusBar
	^ statusBar ifNil: [ statusBar := self statusBarMorph asSpecAdapter  ]