damage control
invalidBoundsFromPoint1: aPoint1 point2: aPoint2
	false ifTrue: [ ^self invalidRect: self bounds ].
	self invalidRect: (self updateBoundsFromPoint1: aPoint1 point2: aPoint2 )
