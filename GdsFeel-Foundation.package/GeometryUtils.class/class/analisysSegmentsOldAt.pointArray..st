analisys-linesegment
analisysSegmentsOldAt: aPoint pointArray: vertices 
	| maps infos minSegIndex result minInfo|
	maps := self segmentDistanceMaps: aPoint pointArray: vertices.	
	infos := maps collect: [:each | self nearyInfoOfDistanceMap:  each ].
	minSegIndex := -1.
	infos 
		ifNotEmpty: [
			minInfo := (infos sort: [:a :b | a second  < b second ]) first.
			minSegIndex := minInfo last at: #segIndex.
			infos := infos sort: [:a :b | (a third at: #segIndex) < (b third at: #segIndex)] ].		
	result := Dictionary new.
	result at: #index put: minSegIndex.
	result at: #infos put: infos.
	result at: #testPoint put: aPoint.
	^ result.