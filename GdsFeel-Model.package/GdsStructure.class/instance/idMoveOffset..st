debug
idMoveOffset: aPoint
	self idSelection elements do: [:each | 
		each moveRelative: aPoint.
		self pushDirtyReservedArea: each].
	dataExtentForElements := nil.
	self comitDirty.
	
	