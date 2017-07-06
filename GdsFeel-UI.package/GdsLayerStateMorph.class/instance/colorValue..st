accessing
colorValue: aColor
	| newColor |
	model ifNil: [^self].
	model color = aColor ifTrue: [^self].
	newColor := self perfectWhiteAllowed 
		ifTrue: [aColor] ifFalse: [aColor = Color white ifTrue: [self missingColor ] ifFalse: [aColor]].
	model color: newColor.
	self changed: self updateSelector.	
	