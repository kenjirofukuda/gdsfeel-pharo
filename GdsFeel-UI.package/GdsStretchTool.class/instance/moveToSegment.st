action
moveToSegment
	| segs fromDistanceMap segInfo seg toPoint preSeg postSeg toDistanceMap  circulerAllowed preSegIndex postSegIndex replaceVirtexPreIndex replaceVirtexPostIndex|
	toPoint := self snapedWorldPoint2.
	analisysResult ifNil: [^self].
	segInfo := (analisysResult at: #infos) at: (analisysResult at: #index).
	fromDistanceMap := segInfo last.
	seg := fromDistanceMap lineSegment.
	toDistanceMap := GeometryUtils distanceMapAt: toPoint segment: seg.
	offsetSeg := LineSegment 
		from: (toDistanceMap at: #virtualCrossPoint) 
		to: toPoint.
	moveToSeg := LineSegment 
		from: (seg start + offsetSeg direction) 
		to: (seg end + offsetSeg direction).

	circulerAllowed := (self currentItem isBoundary).
	segs := GeometryUtils lineSegmentsFormPointArray: self currentItem vertices.
	segs size = 1
		ifTrue: [
			self currentItem verticesAt: 1 put: moveToSeg start fixClosed: circulerAllowed.
			self currentItem verticesAt: 2 put: moveToSeg end fixClosed: circulerAllowed.
			^self updateInvalidArea].
	
	"PREvious Segment"
	preSegIndex := (analisysResult at: #index) - 1.
	circulerAllowed ifTrue: [
		preSegIndex := GeometryUtils 
			asCirculerIndex:  preSegIndex segments: segs.].
	preSeg := segs at: preSegIndex ifAbsent: nil.
	replaceVirtexPreIndex := preSegIndex + 1.
	preSeg ifNotNil: [
		crossPointToPreSeg := preSeg intersectionWith: moveToSeg virtualAllowed: true].
		
	"POST Segment"
	postSegIndex := (analisysResult at: #index) + 1.
	circulerAllowed ifTrue: [
		postSegIndex := GeometryUtils 
			asCirculerIndex:  postSegIndex segments: segs.].
	postSeg := segs at: postSegIndex ifAbsent: nil.
	replaceVirtexPostIndex := postSegIndex.
	postSeg ifNotNil: [
		crossPointToPostSeg := postSeg intersectionWith: moveToSeg virtualAllowed: true.].

	circulerAllowed ifTrue: [
		(crossPointToPreSeg isNil or: [crossPointToPostSeg isNil])
			ifTrue:[^self updateInvalidArea].].
	
	preSeg ifNil: [
		crossPointToPreSeg := crossPointToPostSeg - moveToSeg direction].

	postSeg ifNil: [
		crossPointToPostSeg := crossPointToPreSeg + moveToSeg direction].

	self currentItem 
		verticesAt: replaceVirtexPreIndex 
		put: crossPointToPreSeg copy
		fixClosed: circulerAllowed.
	
	self currentItem 
		verticesAt: replaceVirtexPostIndex 
		put: crossPointToPostSeg copy 
		fixClosed: circulerAllowed.
			
	self updateInvalidArea.