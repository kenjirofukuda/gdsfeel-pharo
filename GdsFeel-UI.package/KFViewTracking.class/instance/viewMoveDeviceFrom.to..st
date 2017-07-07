private
viewMoveDeviceFrom: aPoint1 to: aPoint2
	| newCenter |
	newCenter := (self viewport portCenter - ((aPoint2 - aPoint1) * (1 @ -1))).
	self viewport portCenter: newCenter.