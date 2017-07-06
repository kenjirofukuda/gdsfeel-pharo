drawing
drawSegmentEndPointByDiamondOn: aLocalCanvas segment: seg
	morph drawOn: aLocalCanvas  markDiamondPointAt:  seg start.
	morph drawOn: aLocalCanvas  markDiamondPointAt: seg end.
