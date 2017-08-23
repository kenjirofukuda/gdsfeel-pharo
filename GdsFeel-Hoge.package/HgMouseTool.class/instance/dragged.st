testing
dragged
	^ points size > 2 and: [ (points last dist: points first) > self draggedThreshold ]
