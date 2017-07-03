*GdsFeel-Foundation-extension
slantSymbol
	self isHorizontal ifTrue: [ ^ #horizontal ].
	self isVertical ifTrue: [ ^ #vertical ].
	^ #any	