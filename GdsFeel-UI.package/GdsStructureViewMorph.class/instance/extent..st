geometry
extent: aPoint
	super extent: aPoint.
	self removeCachedCanvas.
	self viewport 
		ifNotNil: [
			self viewport extent: aPoint.
			self autoFitOnResize 
				ifTrue: [ 
					self viewport viewFit ] ].
