drawing
drawFeedbackOn: aLocalCanvas
	| segInfo crossPoint seg |
	analisysResult ifNil: [^self].
	segInfo := (analisysResult at: #infos) at: (analisysResult at: #index).
	seg := (segInfo last at: #seg).
	self clickCount \\ 2 = 1
		ifTrue: [
			morph drawOn: aLocalCanvas  lineSegment: seg  width: 2.
			self drawSegmentEndPointByDiamondOn:  aLocalCanvas segment: seg.].
	GdsFeelMorphic debugStretchFeedback ifFalse: [^self].
	
	self markCrossPoint ifTrue:[
		crossPoint := (segInfo last at: #crossPoint).
		morph drawOn: aLocalCanvas centerCircleAt: crossPoint.].
	morph invalidBoundsForSegment: seg.
	moveToSeg ifNotNil: [
		self drawOn: aLocalCanvas segment: moveToSeg].
	offsetSeg ifNotNil: [
		self drawOn: aLocalCanvas segment: offsetSeg].
	self drawVirtualCrossPointOn: aLocalCanvas.
