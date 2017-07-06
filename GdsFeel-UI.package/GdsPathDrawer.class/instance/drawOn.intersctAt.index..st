drawing-utility
drawOn: strokeCanvas intersctAt: aPoint index: aIndex
	morph drawOn: strokeCanvas markDiamondPointAt: aPoint.
	morph drawOn: strokeCanvas text: aIndex at: aPoint..
	