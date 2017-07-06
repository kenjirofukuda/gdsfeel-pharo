rubberband
stepSensorLayerMorph: aMorph
	| oldP p |
	self viewport ifNil: [^self].
	p := self viewport worldPointFromGlobal: Sensor cursorPoint.
	oldP := aMorph valueOfProperty: #worldPoint ifAbsent: 0@0. 
	oldP = p ifTrue: [^self].
	aMorph setProperty: #worldPoint toValue: p copy.
	self showLocationPane:  self locationPane at: p.
	self referenceLocationPane visible
		ifTrue: [
			self 
				showLocationPane:  self referenceLocationPane 
				at: (self referenceLocationPane valueOfProperty: #worldPoint).].
	false ifTrue: [^aMorph invalidRect: aMorph bounds].			
	aMorph invalidRect: (self updateBoundsFromPoint1: oldP point2: p).