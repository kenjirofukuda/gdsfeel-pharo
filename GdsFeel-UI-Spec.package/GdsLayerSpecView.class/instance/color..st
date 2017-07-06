accessing
color: aColor
	| newColor |
	self layer ifNil: [^ self].
	newColor := self perfectWhiteAllowed 
		ifTrue: [aColor] ifFalse: [aColor = Color white ifTrue: [self missingColor ] ifFalse: [aColor]].
	self layer color: newColor.
	colorChooserMorph submorphsDo: [ :each | each updateColor ] .
	