accessing
statusBar
	^ statusBar ifNil: [ statusBar := self instantiate:  HgStatusBar ]