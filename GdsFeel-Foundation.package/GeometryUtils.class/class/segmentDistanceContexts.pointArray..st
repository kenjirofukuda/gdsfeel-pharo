analisys-linesegment
segmentDistanceContexts: aPoint pointArray: vertices 
	| segIndex |
	^ Array streamContents: [ :s |
		segIndex := 0.
		GeometryUtils 
			pointArray:  vertices
			lineSegmentsDo: [ :lineSegment | 			
				| distanceContext |
				segIndex := segIndex + 1.
				distanceContext := self distanceContextAt: aPoint segment: lineSegment index: segIndex.			
				s nextPut: distanceContext ] ]