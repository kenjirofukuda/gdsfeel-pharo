outline
lookupBoundaryPoints
	|  unit r offsetRadians getSegsBlock lastSeg vpLeftPrev vpLeft vpRight vpRightPrev count points colPoints colLeftPoints colRightPoints segOutlinePoints segs1 segs2 leftSeg1 leftSeg2 rightSeg1 rightSeg2 |
	colPoints := OrderedCollection new.	
	colLeftPoints := OrderedCollection new.	
	colRightPoints := OrderedCollection new.	
	points := self vertices.
	offsetRadians :=  self degressOfPathType degreesToRadians.
	unit := offsetRadians sin.
	r := unit = 0 ifTrue: [self halfWidth] ifFalse: [self halfWidth / unit].
	lastSeg := nil.
	vpLeft := nil.
	vpLeftPrev := nil.
	vpRight := nil.
	vpRightPrev := nil.
	count := 0.
	getSegsBlock := [:each | self outlineSegmentsOf: each offsetRadians: offsetRadians r: r].
	self lineSegmentsDo: [:seg |
		|  |
		count := count + 1.
		segOutlinePoints := seg outlinePoints: offsetRadians r: r.
		(points size = 2)
			ifTrue: [
				colPoints addAll: {segOutlinePoints at: 3 . segOutlinePoints at: 2 . segOutlinePoints at: 1 . segOutlinePoints at: 4 . segOutlinePoints at: 3}.
				^colPoints asArray].	
		segs1 := getSegsBlock value: seg.
		leftSeg1 := segs1 second reversed.
		rightSeg1 := segs1 fourth .
		(count == 1)
			ifTrue: [
				vpLeft := leftSeg1 start copy.
				vpRight := rightSeg1 start copy..
				vpLeftPrev := leftSeg1 start copy..
				vpRightPrev := rightSeg1 start copy..				
				].		
		lastSeg ifNotNil: [
			segs2 := getSegsBlock value: lastSeg.
			leftSeg2 := segs2 second reversed.
			rightSeg2 := segs2 fourth .
			vpLeft := leftSeg1 intersectionWith: leftSeg2  virtualAllowed: true.
			vpLeft ifNil: [vpLeft := leftSeg2 end copy.].
			vpLeftPrev 
				ifNil:[vpLeftPrev := leftSeg2 start].
			colLeftPoints add: vpLeftPrev.
			colLeftPoints add: vpLeft.
			vpLeftPrev := vpLeft copy.
			
			vpRight := rightSeg1 intersectionWith: rightSeg2  virtualAllowed: true.
			vpRight ifNil: [vpRight := rightSeg2 end copy.].
			colRightPoints add: vpRightPrev.
			colRightPoints add: vpRight.
			vpRightPrev := vpRight copy.
		count = (points size - 1)
			ifTrue: [
				vpLeft ifNotNil: [
					colLeftPoints add: leftSeg1 end copy].
				vpRight ifNotNil: [
					colRightPoints add: rightSeg1 end copy]].].
		lastSeg := seg].
	colPoints addAll: colLeftPoints.
	colPoints addAll: colRightPoints reversed.	
	colPoints size >= 2 	
		ifTrue: [colPoints add: colPoints first].
	self assert: [colPoints size >= 5].
	^colPoints asArray.
	