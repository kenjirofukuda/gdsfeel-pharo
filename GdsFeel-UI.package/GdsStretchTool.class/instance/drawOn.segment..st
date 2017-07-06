drawing
drawOn: aLocalCanvas segment: segment
	morph drawOn: aLocalCanvas  lineSegment: segment.
	self drawSegmentEndPointByDiamondOn:  aLocalCanvas segment: segment.
	morph invalidBoundsForSegment: segment.
