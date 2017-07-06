testing
isSelfColor
	self isColorByLayer ifTrue: [ ^ false ].	
	self isColorByBlock ifTrue: [ ^ false ].
	^ true