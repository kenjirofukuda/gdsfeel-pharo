private
viewMoveFrom: aPoint1 to: aPoint2
	self viewport viewCenter: (self viewport viewCenter - (aPoint2 - aPoint1)) .
