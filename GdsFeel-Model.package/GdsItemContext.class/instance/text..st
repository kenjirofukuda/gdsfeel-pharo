accessing
text: aString
	text = aString ifTrue: [^self].
	text := aString.
	self changed: #text.
	