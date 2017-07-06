private
itemSegmentAt: segIndex circurlerAllowed: aBoolean
	| segs|
	segs := GeometryUtils lineSegmentsFormPointArray:  self currentItem vertices. 
	aBoolean ifFalse: [^segs at: segIndex ifAbsent: [nil.]].
	^segs at: (GeometryUtils asCirculerIndex: segIndex segments: segs).