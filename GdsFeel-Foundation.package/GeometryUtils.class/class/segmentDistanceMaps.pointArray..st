analisys-linesegment
segmentDistanceMaps: aPoint pointArray: vertices 
	| segIndex |
	^ Array streamContents: [ :s |
		segIndex := 0.
		GeometryUtils 
			pointArray:  vertices
			lineSegmentsDo: [ :lineSegment | 			
				| distanceMap |
				segIndex := segIndex + 1.
				distanceMap := self distanceMapAt: aPoint segment: lineSegment index: segIndex.			
				s nextPut: distanceMap ] ]