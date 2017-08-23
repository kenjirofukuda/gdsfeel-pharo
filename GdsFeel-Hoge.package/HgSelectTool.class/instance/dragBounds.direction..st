event handler
dragBounds: dragDeviceBounds direction: dragDeviceDirection
	dragDeviceDirection = #originToCorner
		ifTrue: [ self selectCompleteEnclosingBounds: dragDeviceBounds ]
		ifFalse: [ self selectTouchBounds: dragDeviceBounds ].
	self view forceRedraw "TODO: fire event"  