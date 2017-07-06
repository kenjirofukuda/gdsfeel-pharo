drawing
redrawElements
	colClipBounds ifNil: [^self visibleElements].
	colClipBounds ifEmpty: [^self visibleElements].
	^self clipedElements:  self viewport worldViewBounds.
	
	