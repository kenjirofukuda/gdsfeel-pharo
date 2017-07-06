accessing
mark: aPoint
	markerPoints ifNil: [markerPoints := OrderedCollection new.].
	(markerPoints includes: aPoint)
		ifFalse: [
			markerPoints add: aPoint].
	self setVisible: true forKey:  #mark.
	