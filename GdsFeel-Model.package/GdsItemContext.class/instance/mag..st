accessing
mag: aFactor
	| oldValue newValue |
	oldValue := self fixMag: self mag.
	newValue := self fixMag: aFactor.
	oldValue = newValue ifTrue: [^self].
	self privateMag: newValue.
	