accessing
clearMarker
	self setVisible: false forKey:  #mark.	
	markerPoints := nil.
	self showsElementKey: false.
	self changed.