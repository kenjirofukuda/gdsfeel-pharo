*GdsFeel-Foundation-extension
standAngle
	| standSegment |
	standSegment := self asStandDirection.
	^ standSegment tangentAtStart degrees.