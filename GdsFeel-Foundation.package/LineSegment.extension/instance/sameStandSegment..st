*GdsFeel-Foundation-extension
sameStandSegment: aLineSgement
	| seg1 seg2 |
	seg1 := self asStandDirection.
	seg2 := aLineSgement asStandDirection.
	^ (seg1 start closeTo: seg2 start) and: [ seg1 end closeTo: seg2 end ]
	