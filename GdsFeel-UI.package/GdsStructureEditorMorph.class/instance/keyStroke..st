event handling
keyStroke: anEvent
	GdsFeel ifDebugOn: [ :s | 
		s nextPutAll: anEvent asString].
	(self viewMoveHandled: anEvent) ifTrue: [self fireFirstdrawing . ^self].
	(self viewZoomHandled: anEvent) ifTrue: [self fireFirstdrawing . ^self].	
	(self viewFitHandled: anEvent) ifTrue: [self fireFirstdrawing . ^self].		