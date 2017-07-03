analisys-linesegment
analisysSegmentsNewAt: aPoint pointArray: vertices 
	| contexts infos minSegIndex result minInfo|
	contexts := self segmentDistanceContexts: aPoint pointArray: vertices.
	minSegIndex := -1.
	infos := contexts collect: [:each | self nearyInfoOfDistanceContext:  each ].
	infos 
		ifNotEmpty: [
			minInfo := (infos sort: [:a :b | a second  < b second ]) first.
			minSegIndex := minInfo last segIndex.
			infos := infos sort: [:a :b | (a third segIndex) < (b third segIndex) ]].
	result := Dictionary new.
	result at: #index put: minSegIndex.
	result at: #infos put: infos.
	result at: #testPoint put: aPoint.
	^result.