initialization
initializeWidgets
	mouseXY := self newLabel.
	mouseXY label: '[X: , Y: ]'.
	mouseHV := self newLabel.
	mouseHV label: '[H: , V: ]'.
	sizeWH := self newLabel.
	sizeWH label: '[W: , H: ]'