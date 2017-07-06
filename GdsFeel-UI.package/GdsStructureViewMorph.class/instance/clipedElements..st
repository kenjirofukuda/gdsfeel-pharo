drawing
clipedElements: viewBounds
	^model liveElements select: [:each |
		each findBounds intersects: viewBounds.].
	
	