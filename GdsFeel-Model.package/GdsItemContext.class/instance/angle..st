accessing
angle: aDegrees
	| newAngle oldAngle |
	oldAngle := self angle360: self angle.  
	newAngle := self angle360: aDegrees.
	oldAngle = newAngle ifTrue: [^self].
	self privateAngle: newAngle.
	