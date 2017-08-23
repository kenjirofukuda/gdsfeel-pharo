event handler
dragAction
	| dragDeviceDirection |
	dragDeviceDirection := points first < points last
		ifTrue: [ #originToCorner ]
		ifFalse: [ #cornerToOrigin ].
	self dragBounds: self calcDragBounds direction: dragDeviceDirection.
