accessing
angle: aDegrees
	angle = aDegrees ifTrue: [^self].
	angle := aDegrees.
	matrix := nil.	