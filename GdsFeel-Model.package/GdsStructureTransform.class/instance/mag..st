accessing
mag: aFactor
	mag = aFactor ifTrue: [^self].
	mag := aFactor.
	matrix := nil.		
	