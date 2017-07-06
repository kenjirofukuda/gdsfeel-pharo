drawing
drawSegmentEndPointByCircleOn: aLocalCanvas segment: seg
	morph drawOn: aLocalCanvas  centerCircleAt: seg start.
	morph drawOn: aLocalCanvas  centerCircleAt: seg end.
