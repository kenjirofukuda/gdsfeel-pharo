accessing
offset: aPoint
	offset = aPoint ifTrue: [^self].
	offset := aPoint.
	matrix := nil.	